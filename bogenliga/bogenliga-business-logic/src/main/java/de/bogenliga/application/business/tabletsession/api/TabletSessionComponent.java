package de.bogenliga.application.business.tabletsession.api;

import java.util.List;
import de.bogenliga.application.business.tabletsession.api.types.TabletSessionDO;
import javafx.scene.control.Tab;

/**
 * TODO [AL] class documentation
 *
 * @author Andre Lehnert, eXXcellent solutions consulting & software gmbh
 */
public interface TabletSessionComponent {
    List<TabletSessionDO> findAll();

    List<TabletSessionDO> findById(Long wettkampfid);

    TabletSessionDO findByIdScheibennummer(Long wettkampfid, Long scheibenNr);

    TabletSessionDO create(TabletSessionDO sessionDO, Long currentUserId);

    TabletSessionDO update(TabletSessionDO tabletSessionDO, final Long currentUserId);

    void delete(TabletSessionDO tabletSessionDO, final Long currentUserId);
}
