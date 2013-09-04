package.path = package.path .. ";scripts/screenplays/themepark/?.lua;scripts/screenplays/?.lua"
require("screenplay")

-- Theme parks
require("themeParkLogic")
--includeFile("themepark/themeParkLogic.lua")
includeFile("themepark/conversations/mission_giver_conv_handler.lua")
includeFile("themepark/conversations/mission_target_conv_handler.lua")
includeFile("themepark/imperial/themeParkImperial.lua")
includeFile("themepark/imperial/emperors_retreat.lua")
includeFile("themepark/rebel/themeParkRebel.lua")
includeFile("themepark/jabba/themeParkJabba.lua")
includeFile("themepark/marauder/themeParkMarauder.lua")
includeFile("themepark/tutorial.lua")

-- Recruiters
includeFile("recruiters/recruiters.lua")
includeFile("recruiters/imperialrecruiter.lua")
includeFile("recruiters/rebelrecruiter.lua")

-- Dungeons
includeFile("dungeon/death_watch_bunker.lua")
includeFile("dungeon/geonosian_lab.lua")
includeFile("dungeon/warren/warren.lua")
includeFile("dungeon/death_watch_bunker_conv_handles.lua")

-- Task/Quest
includeFile("tasks/ajuva_vanasterin.lua")
includeFile("tasks/biribas_tarun.lua")
includeFile("tasks/booto_lubble.lua")
includeFile("tasks/captain_gavyn_sykes.lua")
includeFile("tasks/diktatQuest.lua")
includeFile("tasks/dolac_legasi.lua")
includeFile("tasks/drakka_judarrl.lua")
includeFile("tasks/draya_korbinari.lua")
includeFile("tasks/hedon_istee.lua")
includeFile("tasks/hefsen_zindalai.lua")
includeFile("tasks/indintra_imbru_yerevan.lua")
includeFile("tasks/jatrian_lytus.lua")
includeFile("tasks/kelvus_naria.lua")
includeFile("tasks/kitster_banai.lua")
includeFile("tasks/luthik_uwyr.lua")
includeFile("tasks/lx_466.lua")
includeFile("tasks/magur_torigai.lua")
includeFile("tasks/mat_rags.lua")
includeFile("tasks/mozo_bondog.lua")
includeFile("tasks/pfilbee_jhorn.lua")
includeFile("tasks/rakir_banai.lua")
includeFile("tasks/ris_armor_quest.lua")
includeFile("tasks/sg_567.lua")
includeFile("tasks/sloan_rusper.lua")
includeFile("tasks/tekil_barje.lua")
includeFile("tasks/vardias_tyne.lua")
includeFile("tasks/xaan_talmaron.lua")
includeFile("tasks/zeelius_kraymunder.lua")

-- Caves
includeFile("caves/corellia_afarathu_cave.lua")
includeFile("caves/corellia_drall_cave.lua")
includeFile("caves/corellia_lord_nyax_cult.lua")
includeFile("caves/dantooine_force_crystal_hunter_cave.lua")
includeFile("caves/dantooine_janta_cave.lua")
includeFile("caves/dantooine_kunga_stronghold.lua")
includeFile("caves/dantooine_lizard_cave.lua")
includeFile("caves/dathomir_rancor_cave.lua")
includeFile("caves/dathomir_spider_clan_cave.lua")
includeFile("caves/endor_orphaned_marauder_cave.lua")
includeFile("caves/lok_droid_engineer_cave.lua")
includeFile("caves/lok_nym_pirate_cave.lua")
includeFile("caves/naboo_narglatch_cave.lua")
includeFile("caves/naboo_pirate_bunker.lua")
includeFile("caves/naboo_veermok_cave.lua")
includeFile("caves/rori_borgle_bat_cave.lua")
includeFile("caves/rori_giant_bark_mite_cave.lua")
includeFile("caves/rori_kobola_bunker.lua")
includeFile("caves/rori_pygmy_torton_cave.lua")
includeFile("caves/talus_aakuan_cave.lua")
includeFile("caves/talus_binayre_pirate_bunker.lua")
includeFile("caves/talus_chunker_bunker.lua")
includeFile("caves/talus_detainment_center.lua")
includeFile("caves/talus_erran_sif.lua")
includeFile("caves/talus_giant_decay_mite_cave.lua")
includeFile("caves/talus_giant_fynock_cave.lua")
includeFile("caves/talus_kahmurra_biogentic_research_station.lua")
includeFile("caves/talus_lost_aqualish_cave.lua")
includeFile("caves/talus_weapons_depot.lua")
includeFile("caves/tatooine_hutt_hideout.lua")
includeFile("caves/tatooine_sennex_cave.lua")
includeFile("caves/tatooine_squill_cave.lua")
includeFile("caves/tatooine_tusken_bunker.lua")

-- Cities
includeFile("cities/corellia_kor_vella.lua")
includeFile("cities/dantooine_imperial_outpost.lua")
includeFile("cities/lok_nym_stronghold.lua")
includeFile("cities/naboo_kadaara.lua")
includeFile("cities/rori_narmle.lua")
includeFile("cities/rori_rebel_outpost.lua")
includeFile("cities/rori_restuss.lua")
includeFile("cities/talus_dearic.lua")
includeFile("cities/talus_nashal.lua")
includeFile("cities/tatooine_mos_taike.lua")

-- POIs
includeFile("poi/corellia_rogue_corsec_base.lua")
includeFile("poi/corellia_rebel_hideout.lua")
includeFile("poi/corellia_stronghold.lua")
includeFile("poi/dantooine_dantari_village.lua")
includeFile("poi/dantooine_mokk_stronghold.lua")
includeFile("poi/dathomir_crash_site.lua")
includeFile("poi/dathomir_imperial_prison.lua")
includeFile("poi/dathomir_nightsister_stronghold.lua")
includeFile("poi/dathomir_nightsister_labor_camp.lua")
includeFile("poi/dathomir_nightsister_vs_singing_mountain.lua")
includeFile("poi/dathomir_sarlacc.lua")
includeFile("poi/dathomir_singing_mountain_clan.lua")
includeFile("poi/endor_donkuwah_static.lua")
includeFile("poi/endor_ewok_outcast_tree.lua")
includeFile("poi/endor_ewok_tree_village_01.lua")
includeFile("poi/endor_ewok_tree_village_02.lua")
includeFile("poi/endor_gondula_tree_village.lua")
includeFile("poi/endor_jinda_ritualist_cave.lua")
includeFile("poi/endor_jinda_static.lua")
includeFile("poi/endor_korga_static.lua")
includeFile("poi/endor_panshee_static.lua")
includeFile("poi/endor_pubam_static.lua")
includeFile("poi/lok_canyon_corsairs_stronghold.lua")
includeFile("poi/lok_downed_blood_razer_transport.lua")
includeFile("poi/lok_imperial_outpost.lua")
includeFile("poi/lok_kimogila_town.lua")
includeFile("poi/naboo_abandoned_imperial_outpost.lua")
includeFile("poi/naboo_gungan_temple.lua")
includeFile("poi/naboo_imperial_vs_gungan.lua")
includeFile("poi/naboo_mauler_stronghold.lua")
includeFile("poi/naboo_mordran.lua")
includeFile("poi/naboo_weapon_testing_facility.lua")
includeFile("poi/rori_cobral_hideout.lua")
includeFile("poi/rori_garyn_raiders_bunker.lua")
includeFile("poi/rori_gungans_swamp_town.lua")
includeFile("poi/rori_hyperdrive_research_facility.lua")
includeFile("poi/rori_imperial_encampment.lua")
includeFile("poi/rori_poacher_vs_creature_battle.lua")
includeFile("poi/rori_rebel_military_base.lua")
includeFile("poi/talus_corsec_vs_flail_battle.lua")
includeFile("poi/talus_imperial_outpost.lua")
includeFile("poi/talus_lost_village_of_durbin.lua")
includeFile("poi/tatooine_ancient_krayt_dragon_skeleton.lua")
includeFile("poi/tatooine_fort_tusken.lua")
includeFile("poi/tatooine_imperial_detachment_hq.lua")
includeFile("poi/tatooine_jabbas_palace_mobs.lua")
includeFile("poi/tatooine_jawa_traders.lua")
includeFile("poi/tatooine_krayt_graveyard.lua")
includeFile("poi/tatooine_sandcrawler_ne.lua")
includeFile("poi/tatooine_village_ruins.lua")
includeFile("poi/yavin4_blueleaf_temple.lua")
includeFile("poi/yavin4_imperial_base.lua")
includeFile("poi/yavin4_woolamander_temple.lua")

--Static Spawns

includeFile("static_spawns/dathomir_static_spawns_ne.lua")
includeFile("static_spawns/dathomir_static_spawns_nw.lua")
includeFile("static_spawns/dathomir_static_spawns_se.lua")
includeFile("static_spawns/dathomir_static_spawns_sw.lua")

includeFile("static_spawns/rori_static_spawns.lua")

includeFile("static_spawns/talus_static_spawns_north.lua")
includeFile("static_spawns/talus_static_spawns_south.lua")
includeFile("static_spawns/tatooine_static_spawns_north.lua")

--Yavin4
includeFile("static_spawns/yavin4_static_spawns.lua")


--Tests
--includeFile("tests/options_bitmask_test.lua")
--includeFile("event/stresstest_20120128.lua")
