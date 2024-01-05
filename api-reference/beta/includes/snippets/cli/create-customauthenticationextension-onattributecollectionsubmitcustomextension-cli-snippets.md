---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity custom-authentication-extensions create --body '{\
    "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtension",\
    "displayName": "attributeCollectionSubmitName",\
    "description": "example description",\
    "authenticationConfiguration": {\
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",\
        "resourceId": "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e"\
    },\
    "endpointConfiguration": {\
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",\
        "targetUrl": "https://contoso.com"\
    },\
    "clientConfiguration": {\
        "timeoutInMilliseconds": 2000,\
        "maximumRetries": 1\
    }\
}\
'

```