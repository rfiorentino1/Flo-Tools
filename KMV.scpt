JsOsaDAS1.001.00bplist00�Vscript_�function setKMV(pstrName, pstrValue) {
	var app = Application.currentApplication()
	app.includeStandardAdditions = true
	var appKM = Application("Keyboard Maestro Engine")
	var oVars = appKM.variables
	try {
		oVars[pstrName].name();
	} catch (e) {
		appKM.variables.push(appKM.Variable({'name': pstrName	}));
		}	// END try/catch
		oVars[pstrName].value = pstrValue
		return
}	// END function setKMVar

function getKMV(pstrName) {
	var app = Application.currentApplication()
	app.includeStandardAdditions = true
	var appKM = Application("Keyboard Maestro Engine")
	var oVars = appKM.variables
	try {
		var strValue = oVars[pstrName].value();
	} catch (e) {
		strValue = undefined
		}	// END try/catch
		return strValue
}	// END function getKMVar
                               jscr  ��ޭ