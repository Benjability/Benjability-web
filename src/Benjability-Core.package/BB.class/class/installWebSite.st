admin
installWebSite

	| application filter exceptionHandlerAttribute |
	application := WAAdmin register: BBWebRoot asApplicationAt: self websiteName.
	application preferenceAt: #sessionClass put: BBSession.
	filter := WAExceptionFilter new.
	exceptionHandlerAttribute := filter configuration attributeAt:
		                             #exceptionHandler.
	filter configuration
		takeValue: WAWalkbackErrorHandler
		forAttribute: exceptionHandlerAttribute.
	application addFilter: filter.
	application
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary;
		addLibrary: JQOvercastTheme