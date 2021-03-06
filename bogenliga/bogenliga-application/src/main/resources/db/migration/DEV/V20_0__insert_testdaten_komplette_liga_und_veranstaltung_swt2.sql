DO $do$

BEGIN



    IF NOT EXISTS(SELECT

                    1

                FROM

                    liga

                WHERE

                    liga_id = 1000) THEN





        --insert test data into table region

    INSERT INTO region (region_id, region_name, region_kuerzel, region_typ, region_uebergeordnet, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1000, 'SWT2_Region', 'SWT_RK', 'KREIS', null, '2021-01-28 20:49:06.337792', 0, null, null, 0) ON CONFLICT DO NOTHING;



    --insert test data into table verein

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1000, 'SWT2_Verein1', 'SWT2_Vereinsnummer1', 1000, '2021-01-28 20:54:10.225483', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1001, 'SWT2_Verein2', 'SWT2_Vereinsnummer2', 1000, '2021-01-28 20:54:32.134826', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1002, 'SWT2_Verein3', 'SWT2_Vereinsnummer3', 1000, '2021-01-28 20:54:50.493881', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1003, 'SWT2_Verein4', 'SWT2_Vereinsnummer4', 1000, '2021-01-28 20:55:15.819105', 0, null, null, 1) ON CONFLICT DO NOTHING;

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1004, 'SWT2_Verein5', 'SWT2_Vereinsnummer5', 1000, '2021-01-28 20:57:52.700940', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1005, 'SWT2_Verein6', 'SWT2_Vereinsnummer6', 1000, '2021-01-28 20:58:20.397817', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1006, 'SWT2_Verein7', 'SWT2_Vereinsnummer7', 1000, '2021-01-28 20:58:38.606665', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO verein (verein_id, verein_name, verein_dsb_identifier, verein_region_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1007, 'SWT2_Verein8', 'SWT2_Vereinsnummer8', 1000, '2021-01-28 20:58:57.048792', 0, null, null, 0) ON CONFLICT DO NOTHING;



    --insert test data into table dsb_mitglied

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1004, 'SWT2_Vorname2', 'SWT2_Nachname2', '1995-12-25', 'DE', 'SWT2_Mitgliedsnummer2', 1000, null, '2021-01-28 21:05:40.587592', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1005, 'SWT2_Vorname3', 'SWT2_Nachname3', '1996-04-15', 'DE', 'SWT2_Mitgliedsnummer3', 1000, null, '2021-01-28 21:06:16.633635', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1006, 'SWT2_Vorname4', 'SWT2_Nachname4', '1995-04-15', 'DE', 'SWT2_Mitgliedsnummer4', 1001, null, '2021-01-28 21:06:57.191383', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1007, 'SWT2_Vorname5', 'SWT2_Nachname5', '1994-04-15', 'DE', 'SWT2_Mitgliedsnummer5', 1001, null, '2021-01-28 21:07:36.878604', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1008, 'SWT2_Vorname6', 'SWT2_Nachname6', '1995-12-15', 'DE', 'SWT2_Mitgliedsnummer6', 1001, null, '2021-01-28 21:08:06.834457', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1009, 'SWT2_Vorname7', 'SWT2_Nachname7', '1994-04-15', 'DE', 'SWT2_Mitgliedsnummer7', 1002, null, '2021-01-28 21:08:49.604368', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1010, 'SWT2_Vorname8', 'SWT2_Nachname8', '1995-12-25', 'DE', 'SWT2_Mitgliedsnummer8', 1002, null, '2021-01-28 21:09:20.959538', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1011, 'SWT2_Vorname9', 'SWT2_Nachname9', '1995-04-25', 'DE', 'SWT2_Mitgliedsnummer9', 1002, null, '2021-01-28 21:09:56.870332', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1012, 'SWT2_Vorname10', 'SWT2_Nachname10', '1994-04-15', 'DE', 'SWT2_Mitgliedsnummer10', 1003, null, '2021-01-28 21:10:29.149437', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1013, 'SWT2_Vorname11', 'SWT2_Nachname11', '1996-04-15', 'DE', 'SWT2_Mitgliedsnummer11', 1003, null, '2021-01-28 21:10:54.889412', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1014, 'SWT2_Vorname12', 'SWT2_Nachname12', '1995-04-16', 'DE', 'SWT2_Mitgliedsnummer12', 1003, null, '2021-01-28 21:11:34.157185', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1015, 'SWT2_Vorname13', 'SWT2_Nachname13', '1995-06-15', 'DE', 'SWT2_Mitgliedsnummer13', 1004, null, '2021-01-28 21:11:56.752077', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1016, 'SWT2_Vorname14', 'SWT2_Nachname14', '1993-04-14', 'DE', 'SWT2_Mitgliedsnummer14', 1004, null, '2021-01-28 21:12:25.868791', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1017, 'SWT2_Vorname15', 'SWT2_Nachname15', '1995-05-31', 'DE', 'SWT2_Mitgliedsnummer15', 1004, null, '2021-01-28 21:13:03.575064', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1018, 'SWT2_Vorname16', 'SWT2_Nachname16', '1995-05-05', 'DE', 'SWT2_Mitgliedsnummer16', 1005, null, '2021-01-28 21:13:33.725819', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1019, 'SWT2_Vorname17', 'SWT2_Nachname17', '1996-06-06', 'DE', 'SWT2_Mitgliedsnummer17', 1005, null, '2021-01-28 21:13:56.259058', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1020, 'SWT2_Vorname18', 'SWT2_Nachname18', '1994-04-15', 'DE', 'SWT2_Mitgliedsnummer18', 1005, null, '2021-01-28 21:14:25.023621', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1021, 'SWT2_Vorname19', 'SWT2_Nachname19', '1995-05-31', 'DE', 'SWT2_Mitgliedsnummer19', 1006, null, '2021-01-28 21:14:47.170032', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1022, 'SWT2_Vorname20', 'SWT2_Nachname20', '1995-04-25', 'DE', 'SWT2_Mitgliedsnummer20', 1006, null, '2021-01-28 21:15:16.532752', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1023, 'SWT2_Vorname21', 'SWT2_Nachname21', '1995-04-05', 'DE', 'SWT2_Mitgliedsnummer21', 1006, null, '2021-01-28 21:15:50.306845', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1024, 'SWT2_Vorname22', 'SWT2_Nachname22', '1995-06-06', 'DE', 'SWT2_Mitgliedsnummer22', 1007, null, '2021-01-28 21:16:26.836332', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1025, 'SWT2_Vorname23', 'SWT2_Nachname23', '1994-08-25', 'DE', 'SWT2_Mitgliedsnummer23', 1007, null, '2021-01-28 21:16:53.022911', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1026, 'SWT2_Vorname24', 'SWT2_Nachname24', '1996-12-19', 'DE', 'SWT2_Mitgliedsnummer24', 1007, null, '2021-01-28 21:17:26.379865', 0, null, null, 0) ON CONFLICT DO NOTHING;

    INSERT INTO dsb_mitglied (dsb_mitglied_id, dsb_mitglied_vorname, dsb_mitglied_nachname, dsb_mitglied_geburtsdatum, dsb_mitglied_nationalitaet, dsb_mitglied_mitgliedsnummer, dsb_mitglied_verein_id, dsb_mitglied_benutzer_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1003, 'SWT2_Vorname1', 'SWT2_Nachname1', '1994-06-15', 'DE', 'SWT2_Mitgliedsnummer1', 1000, null, '2021-01-28 21:05:05.580670', 0, '2021-01-28 21:37:48.757403', 0, 6) ON CONFLICT DO NOTHING;



    --insert test data into table liga

    INSERT INTO liga (liga_id, liga_region_id, liga_name, liga_uebergeordnet, liga_verantwortlich, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version) VALUES (1000, 1000, 'SWT2_Liga', null, 1, '2021-01-28 20:49:53.144871', 0, '2021-01-28 22:11:12.685431', null, 5) ON CONFLICT DO NOTHING;



    --insert test data into table veranstaltung

    INSERT INTO veranstaltung (veranstaltung_id, veranstaltung_wettkampftyp_id, veranstaltung_name, veranstaltung_sportjahr, veranstaltung_meldedeadline, veranstaltung_ligaleiter_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, veranstaltung_liga_id) VALUES (1001, 1, 'SWT2_Veranstaltung', 2018, '2017-11-01', 2, '2021-01-28 20:51:23.509994', 0, null, null, 0, 1000) ON CONFLICT DO NOTHING;



    --insert test data into table mannschaft

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1024, 1000, 1, 1, 1001, '2021-01-28 21:00:11.394075', 0, '2021-01-28 21:48:09.556698', 0, 1, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1025, 1001, 1, 1, 1001, '2021-01-28 21:00:43.142338', 0, '2021-01-28 21:48:17.524456', 0, 1, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1026, 1002, 1, 1, 1001, '2021-01-28 21:01:08.275465', 0, '2021-01-28 21:48:23.795492', 0, 1, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1027, 1003, 1, 1, 1001, '2021-01-28 21:01:28.311192', 0, '2021-01-28 21:48:34.621671', 0, 1, 4) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1028, 1004, 1, 1, 1001, '2021-01-28 21:01:47.911814', 0, '2021-01-28 21:48:43.423246', 0, 1, 5) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1029, 1005, 1, 1, 1001, '2021-01-28 21:02:05.553734', 0, '2021-01-28 21:48:52.387271', 0, 1, 6) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1030, 1006, 1, 1, 1001, '2021-01-28 21:02:32.074300', 0, '2021-01-28 21:49:01.730478', 0, 1, 7) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaft (mannschaft_id, mannschaft_verein_id, mannschaft_nummer, mannschaft_benutzer_id, mannschaft_veranstaltung_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaft_sortierung) VALUES (1031, 1007, 1, 1, 1001, '2021-01-28 21:02:53.656024', 0, '2021-01-28 21:49:09.508576', 0, 1, 8) ON CONFLICT DO NOTHING;



    --insert test data into table mannschaftsmitglied

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1032, 1024, 1003, 0, '2021-01-28 21:44:00.847745', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1033, 1024, 1004, 0, '2021-01-28 21:44:06.218008', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1034, 1024, 1005, 0, '2021-01-28 21:44:10.421685', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1035, 1025, 1006, 0, '2021-01-28 21:44:29.136280', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1036, 1025, 1007, 0, '2021-01-28 21:44:32.891021', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1037, 1025, 1008, 0, '2021-01-28 21:44:36.209439', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1038, 1026, 1009, 0, '2021-01-28 21:44:57.308174', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1039, 1026, 1010, 0, '2021-01-28 21:45:00.625636', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1040, 1026, 1011, 0, '2021-01-28 21:45:04.800206', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1041, 1027, 1012, 0, '2021-01-28 21:45:31.773395', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1042, 1027, 1013, 0, '2021-01-28 21:45:34.990962', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1043, 1027, 1014, 0, '2021-01-28 21:45:38.463823', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1044, 1028, 1015, 0, '2021-01-28 21:46:26.441302', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1045, 1028, 1016, 0, '2021-01-28 21:46:29.373835', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1046, 1028, 1017, 0, '2021-01-28 21:46:32.159377', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1047, 1029, 1018, 0, '2021-01-28 21:46:47.952251', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1048, 1029, 1019, 0, '2021-01-28 21:46:51.672698', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1049, 1029, 1020, 0, '2021-01-28 21:46:54.707223', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1050, 1030, 1021, 0, '2021-01-28 21:47:11.940344', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1051, 1030, 1022, 0, '2021-01-28 21:47:15.075176', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1052, 1030, 1023, 0, '2021-01-28 21:47:18.428874', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1053, 1031, 1024, 0, '2021-01-28 21:47:31.461485', 0, null, null, 0, 1) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1054, 1031, 1025, 0, '2021-01-28 21:47:34.564442', 0, null, null, 0, 2) ON CONFLICT DO NOTHING;

    INSERT INTO mannschaftsmitglied (mannschaftsmitglied_id, mannschaftsmitglied_mannschaft_id, mannschaftsmitglied_dsb_mitglied_id, mannschaftsmitglied_dsb_mitglied_eingesetzt, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, mannschaftsmitglied_rueckennummer) VALUES (1055, 1031, 1026, 0, '2021-01-28 21:47:40.144313', 0, null, null, 0, 3) ON CONFLICT DO NOTHING;



    --insert test data into table wettkampf

    INSERT INTO wettkampf (wettkampf_id, wettkampf_veranstaltung_id, wettkampf_datum, wettkampf_beginn, wettkampf_tag, wettkampf_disziplin_id, wettkampf_wettkampftyp_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, wettkampfausrichter, wettkampf_strasse, wettkampf_plz, wettkampf_ortsname) VALUES (2004, 1001, '2018-05-08', '15:30', 0, 0, 0, '2021-01-28 21:27:42.305203', 0, null, null, 7, null, 'Bahnhofstrasse', 72764, 'Reutlingen') ON CONFLICT DO NOTHING;

    INSERT INTO wettkampf (wettkampf_id, wettkampf_veranstaltung_id, wettkampf_datum, wettkampf_beginn, wettkampf_tag, wettkampf_disziplin_id, wettkampf_wettkampftyp_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, wettkampfausrichter, wettkampf_strasse, wettkampf_plz, wettkampf_ortsname) VALUES (2003, 1001, '2018-05-08', '15:30', 3, 0, 0, '2021-01-28 21:27:42.305203', 0, null, null, 7, null, 'Bahnhofstrasse', 72764, 'Reutlingen') ON CONFLICT DO NOTHING;

    INSERT INTO wettkampf (wettkampf_id, wettkampf_veranstaltung_id, wettkampf_datum, wettkampf_beginn, wettkampf_tag, wettkampf_disziplin_id, wettkampf_wettkampftyp_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, wettkampfausrichter, wettkampf_strasse, wettkampf_plz, wettkampf_ortsname) VALUES (2002, 1001, '2018-05-07', '15:30', 4, 0, 0, '2021-01-28 21:27:42.305203', 0, null, null, 6, null, 'Bahnhofstrasse', 72764, 'Reutlingen') ON CONFLICT DO NOTHING;

    INSERT INTO wettkampf (wettkampf_id, wettkampf_veranstaltung_id, wettkampf_datum, wettkampf_beginn, wettkampf_tag, wettkampf_disziplin_id, wettkampf_wettkampftyp_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, wettkampfausrichter, wettkampf_strasse, wettkampf_plz, wettkampf_ortsname) VALUES (2000, 1001, '2018-05-05', '15:30', 1, 0, 0, '2021-01-28 21:27:42.305203', 0, null, null, 9, null, 'Bahnhofstrasse', 72764, 'Reutlingen') ON CONFLICT DO NOTHING;

    INSERT INTO wettkampf (wettkampf_id, wettkampf_veranstaltung_id, wettkampf_datum, wettkampf_beginn, wettkampf_tag, wettkampf_disziplin_id, wettkampf_wettkampftyp_id, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, wettkampfausrichter, wettkampf_strasse, wettkampf_plz, wettkampf_ortsname) VALUES (2001, 1001, '2018-05-06', '15:30', 2, 0, 0, '2021-01-28 21:27:42.305203', 0, null, null, 9, null, 'Bahnhofstrasse', 72764, 'Reutlingen') ON CONFLICT DO NOTHING;



    --insert test data into table match

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 3, 1029, 6, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 3, 905) ON CONFLICT DO NOTHING;

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 1, 1024, 1, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 6, 900) ON CONFLICT DO NOTHING;

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 2, 1027, 4, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 6, 902) ON CONFLICT DO NOTHING;

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 1, 1025, 2, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 5, 901) ON CONFLICT DO NOTHING;

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 3, 1028, 5, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 5, 904) ON CONFLICT DO NOTHING;

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 2, 1026, 3, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 6, 908) ON CONFLICT DO NOTHING;

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 4, 1031, 8, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 5, 907) ON CONFLICT DO NOTHING;

    INSERT INTO match (match_wettkampf_id, match_nr, match_begegnung, match_mannschaft_id, match_scheibennummer, match_matchpunkte, match_satzpunkte, match_strafpunkte_satz_1, match_strafpunkte_satz_2, match_strafpunkte_satz_3, match_strafpunkte_satz_4, match_strafpunkte_satz_5, created_at_utc, created_by, last_modified_at_utc, last_modified_by, version, match_id) VALUES (2000, 1, 4, 1030, 7, null, null, null, null, null, null, null, '2020-03-01 17:14:35.105428', 0, null, null, 6, 906) ON CONFLICT DO NOTHING;





    end if;



END

$do$
