#HLSDK server Android port
#Copyright (c) nicknekit

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := server

include $(XASH3D_CONFIG)

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
LOCAL_MODULE_FILENAME = libserver_hardfp
endif

LOCAL_CFLAGS += -D_LINUX -DCLIENT_WEAPONS -Dstricmp=strcasecmp -Dstrnicmp=strncasecmp -D_snprintf=snprintf \
	-fno-exceptions -DNO_VOICEGAMEMGR -Wno-conversion-null -Wno-write-strings -std=gnu++98 -Wno-invalid-offsetof


LOCAL_CPPFLAGS := $(LOCAL_CFLAGS) -frtti

LOCAL_C_INCLUDES := $(SDL_PATH)/include \
		    $(LOCAL_PATH)/. \
		    $(LOCAL_PATH)/wpn_shared \
		    $(LOCAL_PATH)/../common \
		    $(LOCAL_PATH)/../engine/common \
		    $(LOCAL_PATH)/../engine \
		    $(LOCAL_PATH)/../public \
		    $(LOCAL_PATH)/../pm_shared \
		    $(LOCAL_PATH)/../game_shared \
		    $(LOCAL_PATH)/bot

LOCAL_SRC_FILES := agrunt.cpp airtank.cpp \
           aflock.cpp \
           animating.cpp \
           animation.cpp \
           apache.cpp \
           barnacle.cpp \
           barney.cpp \
           bigmomma.cpp \
           bloater.cpp \
           bmodels.cpp \
           bullsquid.cpp \
           buttons.cpp \
           cbase.cpp \
           client.cpp \
           combat.cpp \
           controller.cpp \
           crossbow.cpp \
           crowbar.cpp \
           defaultai.cpp \
           doors.cpp \
           effects.cpp \
           egon.cpp \
           explode.cpp \
           flyingmonster.cpp \
           func_break.cpp \
           func_tank.cpp \
           game.cpp \
           gamerules.cpp \
           gargantua.cpp \
           gauss.cpp \
           genericmonster.cpp \
           ggrenade.cpp \
           globals.cpp \
           glock.cpp \
           gman.cpp \
           h_ai.cpp \
           h_battery.cpp \
           h_cycler.cpp \
           h_cine.cpp \
           h_export.cpp \
           handgrenade.cpp \
           hassassin.cpp \
           headcrab.cpp \
           healthkit.cpp \
           hgrunt.cpp \
           hornet.cpp \
           hornetgun.cpp \
           houndeye.cpp \
           ichthyosaur.cpp \
           islave.cpp \
           items.cpp \
           leech.cpp \
           lights.cpp \
           maprules.cpp \
           monstermaker.cpp \
           monsters.cpp \
           monsterstate.cpp \
           mortar.cpp \
           mp5.cpp \
           multiplay_gamerules.cpp \
           nihilanth.cpp \
           nodes.cpp \
           osprey.cpp \
           pathcorner.cpp \
           plane.cpp \
           plats.cpp \
           player.cpp \
           python.cpp \
           rat.cpp \
           roach.cpp \
           rpg.cpp \
	   satchel.cpp \
           schedule.cpp \
           scientist.cpp \
           scripted.cpp \
           shotgun.cpp \
           singleplay_gamerules.cpp \
           skill.cpp \
           sound.cpp \
           soundent.cpp \
           spectator.cpp \
           squadmonster.cpp \
           squeakgrenade.cpp \
           subs.cpp \
           talkmonster.cpp \
           teamplay_gamerules.cpp \
           tentacle.cpp \
           tempmonster.cpp \
           triggers.cpp \
           tripmine.cpp \
           turret.cpp \
           util.cpp \
           weapons.cpp \
           world.cpp \
           xen.cpp \
           zombie.cpp \
           prop.cpp \
           gravgun.cpp \
           ar2.cpp \
           big_cock.cpp \
		   ../pm_shared/pm_debug.c \
		   ../pm_shared/pm_math.c \
		   ../pm_shared/pm_shared.c

BOT_FILES := bot/cs_bot_event.cpp \
bot/cs_bot_listen.cpp \
bot/cs_bot.cpp \
bot/cs_bot_chatter.cpp \
bot/cs_bot_vision.cpp \
bot/manager/bot_profile.cpp \
bot/manager/nav_node.cpp \
bot/manager/nav_file.cpp \
bot/manager/nav_path.cpp \
bot/manager/bot_util.cpp \
bot/manager/bot_manager.cpp \
bot/manager/nav_area.cpp \
bot/manager/bot.cpp \
bot/cs_bot_learn.cpp \
bot/cs_bot_weapon.cpp \
bot/cs_bot_pathfind.cpp \
bot/cs_bot_nav.cpp \
bot/cs_bot_init.cpp \
bot/cs_bot_manager.cpp \
bot/cs_bot_update.cpp \
bot/cs_bot_statemachine.cpp \
bot/shared_util.cpp \
bot/states/cs_bot_investigate_noise.cpp \
bot/states/cs_bot_use_entity.cpp \
bot/states/cs_bot_hunt.cpp \
bot/states/cs_bot_move_to.cpp \
bot/states/cs_bot_idle.cpp \
bot/states/cs_bot_hide.cpp \
bot/states/cs_bot_attack.cpp \
bot/states/cs_bot_follow.cpp \
bot/cs_gamestate.cpp \
bot/mp_parse.cpp

LOCAL_SRC_FILES += $(BOT_FILES)

LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)
