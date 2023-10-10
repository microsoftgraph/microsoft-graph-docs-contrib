---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity authentication-events-flows patch --authentication-events-flow-id {authenticationEventsFlow-id} --body '{\
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",\
    "onAttributeCollection": {\
        "@odata.type": "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",\
        "attributeCollectionPage": {\
            "customStringsFileId": null,\
            "views": [\
                {\
                    "title": null,\
                    "description": null,\
                    "inputs": [\
                        {\
                            "attribute": "email",\
                            "label": "Email Address",\
                            "inputType": "text",\
                            "defaultValue": null,\
                            "hidden": true,\
                            "editable": false,\
                            "writeToDirectory": true,\
                            "required": true,\
                            "validationRegEx": "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$",\
                            "options": []\
                        },\
                        {\
                            "attribute": "displayName",\
                            "label": "Display Name",\
                            "inputType": "text",\
                            "defaultValue": null,\
                            "hidden": false,\
                            "editable": true,\
                            "writeToDirectory": true,\
                            "required": false,\
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",\
                            "options": []\
                        },\
                        {\
                            "attribute": "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",\
                            "label": "Favorite color",\
                            "inputType": "text",\
                            "defaultValue": null,\
                            "hidden": false,\
                            "editable": true,\
                            "writeToDirectory": true,\
                            "required": false,\
                            "validationRegEx": "^.*",\
                            "options": []\
                        }\
                    ]\
                }\
            ]\
        }\
    }\
}\
'

```