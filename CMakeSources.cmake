# sources, headers
set(LSTGX_SRC_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/frameworks)
set(GAME_HEADER
	${LSTGX_SRC_ROOT}/Classes/ArrayObjectPool.hpp
	${LSTGX_SRC_ROOT}/Classes/CirularQueue.hpp
	${LSTGX_SRC_ROOT}/Classes/ControllerHelper.h
	${LSTGX_SRC_ROOT}/Classes/LabelPool.h
	${LSTGX_SRC_ROOT}/Classes/MemPoolManager.h
	${LSTGX_SRC_ROOT}/Classes/RandomWELL512.h
	${LSTGX_SRC_ROOT}/Classes/WindowHelper.h
	${LSTGX_SRC_ROOT}/Classes/XBinaryHelper.h
	${LSTGX_SRC_ROOT}/Classes/XBuffer.h
	${LSTGX_SRC_ROOT}/Classes/XFileDialog.h
	${LSTGX_SRC_ROOT}/Classes/XFileUtils.h
	${LSTGX_SRC_ROOT}/Classes/XGifRecoder.h
	${LSTGX_SRC_ROOT}/Classes/XInfoware.h
	${LSTGX_SRC_ROOT}/Classes/XLabel.h
	${LSTGX_SRC_ROOT}/Classes/XLatex.h
	${LSTGX_SRC_ROOT}/Classes/XLuaModuleRegistry.h
	${LSTGX_SRC_ROOT}/Classes/XProfiler.h
	${LSTGX_SRC_ROOT}/Classes/XRand.h
	${LSTGX_SRC_ROOT}/Classes/XRefAdapter.h
	${LSTGX_SRC_ROOT}/Classes/XStopWatch.h
	${LSTGX_SRC_ROOT}/Classes/XStream.h
	${LSTGX_SRC_ROOT}/Classes/XThreadPool.hpp
	${LSTGX_SRC_ROOT}/Classes/XTriangles.h
	${LSTGX_SRC_ROOT}/Classes/XTrianglesCommand.h
	${LSTGX_SRC_ROOT}/Classes/XZipArchive.h
	${LSTGX_SRC_ROOT}/LSTG/AppFrame.h
	${LSTGX_SRC_ROOT}/LSTG/CollisionDetect.h
	${LSTGX_SRC_ROOT}/LSTG/Global.h
	${LSTGX_SRC_ROOT}/LSTG/InputManager.h
	${LSTGX_SRC_ROOT}/LSTG/LogSystem.h
	${LSTGX_SRC_ROOT}/LSTG/ObjectPool.hpp
	${LSTGX_SRC_ROOT}/LSTG/Renderer.h
	${LSTGX_SRC_ROOT}/LSTG/RenderMode.h
	${LSTGX_SRC_ROOT}/LSTG/ResourceMgr.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentData.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataAni.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataBlend.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataColli.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataLabel.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataLight.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataParticle.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataTrasform.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataVertex.h
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentManager.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LuaWrapper.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWBuiltInFunction.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWColor.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWProfiler.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWRandomizer.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Frame.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Graph.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Input.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Math.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Object.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Render.h
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Text.h
	${LSTGX_SRC_ROOT}/LSTG/Object/GameClass.h
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObject.h
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectBentLaser.h
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectManager.h
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectPool.h
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectPropertyHash.h
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectSet.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/GameResources.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResAnimation.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResAudio.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResBase.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResFont.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResFX.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResParticle.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResRenderTarget.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResSprite.h
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResTexture.h
	${LSTGX_SRC_ROOT}/LSTG/Symbol/GameObjectSymbol.h
	${LSTGX_SRC_ROOT}/LSTG/Symbol/GOSymbolBoolean.h
	${LSTGX_SRC_ROOT}/LSTG/Symbol/GOSymbolNumber.h
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilColor.h
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilGLDefinition.h
	${LSTGX_SRC_ROOT}/LSTG/Util/Utility.h
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilLua.h
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilLuaConversion.h
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilLuaRes.h
	${LSTGX_SRC_ROOT}/LuaBindings/lua_BentLaser_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Buffer_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_configuration_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_controller_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_controller_manual.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_ext.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_manual.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fix.h
	${LSTGX_SRC_ROOT}/LuaBindings/lua_FileDialog_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Latex_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_LogSystem_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_ObjSym_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Random_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_RenderMode_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_ResourceMgr_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Resource_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_StopWatch_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Stream_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Triangles_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_WindowHelper_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_ZipArchive_auto.hpp
	${LSTGX_SRC_ROOT}/LuaBindings/LuaBindings.h
)
set(GAME_SOURCE
	${LSTGX_SRC_ROOT}/Classes/ControllerHelper.cpp
	${LSTGX_SRC_ROOT}/Classes/LabelPool.cpp
	${LSTGX_SRC_ROOT}/Classes/MemPoolManager.cpp
	${LSTGX_SRC_ROOT}/Classes/RandomWELL512.cpp
	${LSTGX_SRC_ROOT}/Classes/WindowHelper.cpp
	${LSTGX_SRC_ROOT}/Classes/XBinaryHelper.cpp
	${LSTGX_SRC_ROOT}/Classes/XBuffer.cpp
	${LSTGX_SRC_ROOT}/Classes/XFileDialog.cpp
	${LSTGX_SRC_ROOT}/Classes/XFileUtils.cpp
	${LSTGX_SRC_ROOT}/Classes/XGifRecoder.cpp
	${LSTGX_SRC_ROOT}/Classes/XInfoware.cpp
	${LSTGX_SRC_ROOT}/Classes/XLabel.cpp
	${LSTGX_SRC_ROOT}/Classes/XLatex.cpp
	${LSTGX_SRC_ROOT}/Classes/XLuaModuleRegistry.cpp
	${LSTGX_SRC_ROOT}/Classes/XProfiler.cpp
	${LSTGX_SRC_ROOT}/Classes/XRand.cpp
	${LSTGX_SRC_ROOT}/Classes/XRefAdapter.cpp
	${LSTGX_SRC_ROOT}/Classes/XStopWatch.cpp
	${LSTGX_SRC_ROOT}/Classes/XStream.cpp
	${LSTGX_SRC_ROOT}/Classes/XTriangles.cpp
	${LSTGX_SRC_ROOT}/Classes/XTrianglesCommand.cpp
	${LSTGX_SRC_ROOT}/Classes/XZipArchive.cpp
	${LSTGX_SRC_ROOT}/LSTG/AppFrame.cpp
	${LSTGX_SRC_ROOT}/LSTG/CollisionDetect.cpp
	${LSTGX_SRC_ROOT}/LSTG/InputManager.cpp
	${LSTGX_SRC_ROOT}/LSTG/LogSystem.cpp
	${LSTGX_SRC_ROOT}/LSTG/Renderer.cpp
	${LSTGX_SRC_ROOT}/LSTG/RenderMode.cpp
	${LSTGX_SRC_ROOT}/LSTG/ResourceMgr.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentData.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataAni.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataBlend.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataColli.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataLabel.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataLight.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataParticle.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataTrasform.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentDataVertex.cpp
	${LSTGX_SRC_ROOT}/LSTG/Component/ComponentManager.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LuaWrapper.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWBuiltInFunction.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWColor.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWProfiler.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LWRandomizer.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Frame.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Graph.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Input.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Math.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Object.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Render.cpp
	${LSTGX_SRC_ROOT}/LSTG/LuaWrapper/LW_Text.cpp
	${LSTGX_SRC_ROOT}/LSTG/Object/GameClass.cpp
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObject.cpp
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectBentLaser.cpp
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectManager.cpp
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectPool.cpp
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectPropertyHash.cpp
	${LSTGX_SRC_ROOT}/LSTG/Object/GameObjectSet.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResAnimation.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResAudio.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResBase.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResFont.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResFX.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResParticle.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResRenderTarget.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResSprite.cpp
	${LSTGX_SRC_ROOT}/LSTG/Resource/ResTexture.cpp
	${LSTGX_SRC_ROOT}/LSTG/Symbol/GameObjectSymbol.cpp
	${LSTGX_SRC_ROOT}/LSTG/Symbol/GOSymbolBoolean.cpp
	${LSTGX_SRC_ROOT}/LSTG/Symbol/GOSymbolNumber.cpp
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilColor.cpp
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilGLDefinition.cpp
	${LSTGX_SRC_ROOT}/LSTG/Util/Utility.cpp
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilLua.cpp
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilLuaConversion.cpp
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilLuaRes.cpp
	${LSTGX_SRC_ROOT}/LSTG/Util/UtilShader.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_BentLaser_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Buffer_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_configuration_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_controller_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_controller_manual.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_ext.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_manual.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fix.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_FileDialog_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Latex_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_LogSystem_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_ObjSym_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Random_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_RenderMode_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_ResourceMgr_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Resource_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_StopWatch_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Stream_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_Triangles_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_WindowHelper_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/lua_ZipArchive_auto.cpp
	${LSTGX_SRC_ROOT}/LuaBindings/LuaBindings.cpp
)

# sources need to compile info, include dirs and source files
set(GAME_INCLUDE
	${LSTGX_SRC_ROOT}
	${LSTGX_SRC_ROOT}/Audio
	${LSTGX_SRC_ROOT}/Classes
	${LSTGX_SRC_ROOT}/imgui
	${LSTGX_SRC_ROOT}/Live2D
	${LSTGX_SRC_ROOT}/LSTG
	${LSTGX_SRC_ROOT}/LuaBindings
	${LSTGX_SRC_ROOT}/Math
	${LSTGX_SRC_ROOT}/Video
)

if(NOT LSTGX_NO_FAIRY_GUI)
	list(APPEND GAME_HEADER
		${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_auto.hpp
		${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_manual.hpp
	)
	list(APPEND GAME_SOURCE
		${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_auto.cpp
		${LSTGX_SRC_ROOT}/LuaBindings/lua_cc_fairygui_manual.cpp
	)
endif()

if(ANDROID)
	list(APPEND GAME_SOURCE ${RUNTIME_SRC_ROOT}/proj.android/app/jni/hellolua/main.cpp)
elseif(LINUX)
    list(APPEND GAME_SOURCE ${RUNTIME_SRC_ROOT}/proj.linux/main.cpp)
elseif(IOS)
	set(APP_UI_RES
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/LaunchScreen.storyboard
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/LaunchScreenBackground.png
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/Images.xcassets
	)
	list(APPEND GAME_HEADER
        ${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/AppController.h
        ${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/RootViewController.h
	)
	list(APPEND GAME_SOURCE
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/main.m
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/AppController.mm
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/RootViewController.mm
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/Prefix.pch
		${RUNTIME_SRC_ROOT}/proj.ios_mac/ios/build-cfg.json
		${APP_UI_RES}
	)
elseif(MACOSX)
	set(APP_UI_RES
		${RUNTIME_SRC_ROOT}/proj.ios_mac/mac/Icon.icns
		${RUNTIME_SRC_ROOT}/proj.ios_mac/mac/Info.plist
	)
	list(APPEND GAME_SOURCE
		${RUNTIME_SRC_ROOT}/proj.ios_mac/mac/main.mm
		${RUNTIME_SRC_ROOT}/proj.ios_mac/mac/ConsoleWindowController.m
		${RUNTIME_SRC_ROOT}/proj.ios_mac/mac/Prefix.pch
		${APP_UI_RES}
	)
elseif(WINDOWS)
    list(APPEND GAME_HEADER
		${RUNTIME_SRC_ROOT}/proj.win32/main.h
		${RUNTIME_SRC_ROOT}/proj.win32/resource.h
        ${RUNTIME_SRC_ROOT}/proj.win32/WindowHelperWin32.h
    )
    list(APPEND GAME_SOURCE ${cc_common_res})
    list(APPEND GAME_SOURCE
		${RUNTIME_SRC_ROOT}/proj.win32/main.cpp
		${RUNTIME_SRC_ROOT}/proj.win32/game.rc
        ${RUNTIME_SRC_ROOT}/proj.win32/WindowHelperWin32.cpp
    )
endif()
