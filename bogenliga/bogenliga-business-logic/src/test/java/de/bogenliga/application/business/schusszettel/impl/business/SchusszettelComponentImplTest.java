package de.bogenliga.application.business.schusszettel.impl.business;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.assertj.core.api.Assertions;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnit;
import org.mockito.junit.MockitoRule;
import de.bogenliga.application.business.dsbmannschaft.api.DsbMannschaftComponent;
import de.bogenliga.application.business.dsbmannschaft.api.types.DsbMannschaftDO;
import de.bogenliga.application.business.dsbmannschaft.impl.business.DsbMannschaftComponentImplTest;
import de.bogenliga.application.business.match.api.MatchComponent;
import de.bogenliga.application.business.match.api.types.MatchDO;
import de.bogenliga.application.business.match.impl.business.MatchComponentImplTest;
import de.bogenliga.application.business.vereine.api.VereinComponent;
import de.bogenliga.application.business.vereine.api.types.VereinDO;
import de.bogenliga.application.business.vereine.impl.business.VereinComponentImplTest;
import de.bogenliga.application.business.wettkampf.api.WettkampfComponent;
import de.bogenliga.application.business.wettkampf.api.types.WettkampfDO;
import de.bogenliga.application.business.wettkampf.impl.business.WettkampfComponentImplTest;
import de.bogenliga.application.common.errorhandling.exception.BusinessException;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.*;

/**
 *
 * @author Michael Hesse
 */
public class SchusszettelComponentImplTest {

    private static final long MANNSCHAFTSID = 101;
    private static final long WETTKAMPFID = 30;
    private static final long WETTKAMPFID_FALSE = -1;

    @Rule
    public MockitoRule mockitoRule = MockitoJUnit.rule();

    @Rule
    public ExpectedException thrown = ExpectedException.none();
    @Mock
    private MatchComponent matchComponent;
    @Mock
    private WettkampfComponent wettkampfComponent;
    @Mock
    private DsbMannschaftComponent dsbMannschaftComponent;
    @Mock
    private VereinComponent vereinComponent;


    @InjectMocks
    private SchusszettelComponentImpl underTest;

    @Test
    public void getAllSchusszettelPDFasByteArray() {
        final List<MatchDO> matchDOList = getMatchesForWettkampf();

        WettkampfDO wettkampfDO = WettkampfComponentImplTest.getWettkampfDO();
        DsbMannschaftDO dsbMannschaftDO = DsbMannschaftComponentImplTest.getDsbMannschaftDO();
        VereinDO vereinDO = VereinComponentImplTest.getVereinDO();

        //configure Mocks
        when(matchComponent.findByWettkampfId(anyLong())).thenReturn(matchDOList);
        when(wettkampfComponent.findById(anyLong())).thenReturn(wettkampfDO);
        when(dsbMannschaftComponent.findById(anyLong())).thenReturn(dsbMannschaftDO);
        when(vereinComponent.findById(anyLong())).thenReturn(vereinDO);


        //call test method
        final byte[] actual = underTest.getAllSchusszettelPDFasByteArray(WETTKAMPFID);

        //assert
        Assertions.assertThat(actual).isNotEmpty();

        //verify invocations
        verify(matchComponent).findByWettkampfId(anyLong());
    }

    @Test
    public void getAllSchusszettelPDFasByteArray_ShouldThrowException() {
        final String PRECONDITION_WETTKAMPFID = "wettkampfid cannot be negative";

        final List<MatchDO> matchDOList = getMatchesForWettkampf();

        WettkampfDO wettkampfDO = WettkampfComponentImplTest.getWettkampfDO();
        DsbMannschaftDO dsbMannschaftDO = DsbMannschaftComponentImplTest.getDsbMannschaftDO();
        VereinDO vereinDO = VereinComponentImplTest.getVereinDO();

        when(wettkampfComponent.findById(anyLong())).thenReturn(wettkampfDO);
        when(dsbMannschaftComponent.findById(anyLong())).thenReturn(dsbMannschaftDO);
        when(vereinComponent.findById(anyLong())).thenReturn(vereinDO);

        thrown.expect(BusinessException.class);
        thrown.expectMessage(PRECONDITION_WETTKAMPFID);

        when(matchComponent.findByWettkampfId(anyLong())).thenReturn(matchDOList);

        underTest.getAllSchusszettelPDFasByteArray(WETTKAMPFID_FALSE);

    }

    @Test
    public void getAllSchusszettelPDFasByteArrayInIf_ShouldThrowException() {
        final String ELSE_CONDITION_WETTKAMPFID = "Matches für den Wettkampf noch nicht erzeugt";
        List<MatchDO> lokaleListe = new ArrayList();
        thrown.expect(BusinessException.class);
        thrown.expectMessage(ELSE_CONDITION_WETTKAMPFID);

        when(matchComponent.findByWettkampfId(anyLong())).thenReturn(lokaleListe);

        underTest.getAllSchusszettelPDFasByteArray(WETTKAMPFID);

    }

    private static List<MatchDO> getMatchesForWettkampf(){
        List<MatchDO> result = new ArrayList<>();
        //iterate through matches
        for (long match = 1; match <=7; match++){
            //iterate through encounter
            for(long encounter = 1; encounter <=4; encounter++){
                //iterate thorugh targets
                for(long i = 0; i <= 1; i++) {
                    MatchDO element = MatchComponentImplTest.getMatchDO();

                    element.setWettkampfId(WETTKAMPFID);
                    element.setNr(match);
                    element.setBegegnung(encounter);
                    element.setMannschaftId(MANNSCHAFTSID);

                    element.setScheibenNummer((encounter * 2) - 1 + i);

                    result.add(element);
                }
            }
        }

        return result;
    }
}