:: Setup
:: -----

setlocal enabledelayedexpansion

IF NOT DEFINED SITE (
  SET SITE=%~dp0%..
)

IF NOT DEFINED DEPLOYMENT_SOURCE (
  SET DEPLOYMENT_SOURCE=%SITE%\repository
)

IF NOT DEFINED DEPLOYMENT_TARGET_DIR (
  SET DEPLOYMENT_TARGET_DIR=%SITE%\wwwroot\GraphDocuments
)

IF NOT DEFINED DEPLOYMENT_TEMPLATE (
  SET DEPLOYMENT_TEMPLATE=%SITE%\wwwroot\MD\office-content-pr\rest-api\Microsoft.Graph\html-template
)

IF NOT DEFINED APIDOCS_PATH (
  SET APIDOCS_PATH=%SITE%\wwwroot\MD\apidocs
)

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\api-reference --output %DEPLOYMENT_TARGET_DIR%\api-reference --template %DEPLOYMENT_TEMPLATE% --format mustache

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\content\authorization --output %DEPLOYMENT_TARGET_DIR%\authorization --template %DEPLOYMENT_TEMPLATE% --format mustache

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\content\overview --output %DEPLOYMENT_TARGET_DIR%\overview --template %DEPLOYMENT_TEMPLATE% --format mustache

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\content\walkthroughs --output %DEPLOYMENT_TARGET_DIR%\platform --template %DEPLOYMENT_TEMPLATE% --format mustache

