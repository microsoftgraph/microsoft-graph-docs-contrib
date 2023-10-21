---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity authentication-events-flows create --body '{\
    "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",\
    "displayName": "Woodgrove Drive User Flow",\
    "onAuthenticationMethodLoadStart": {\
        "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",\
        "identityProviders": [\
            {\
                "id": "EmailPassword-OAUTH"\
            }\
        ]\
    },  \
    "onInteractiveAuthFlowStart": {\
        "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",\
        "isSignUpAllowed": true\
    },\
    "onAttributeCollection": {\
        "@odata.type": "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",\
        "attributes": [\
            {\
                "id": "email",\
                "displayName": "Email Address",\
                "description": "Email address of the user",\
                "userFlowAttributeType": "builtIn",\
                "dataType": "string"\
            },\
            {\
                "id": "displayName",\
                "displayName": "Display Name",\
                "description": "Display Name of the User.",\
                "userFlowAttributeType": "builtIn",\
                "dataType": "string"\
            }\
        ],\
        "attributeCollectionPage": {\
            "views": [\
                {\
                    "inputs": [\
                        {\
                            "attribute": "email",\
                            "label": "Email Address",\
                            "inputType": "Text",\
                            "hidden": true,\
                            "editable": false,\
                            "writeToDirectory": true,\
                            "required": true,\
                            "validationRegEx": "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$"\
                        },\
                        {\
                            "attribute": "displayName",\
                            "label": "Display Name",\
                            "inputType": "text",\
                            "hidden": false,\
                            "editable": true,\
                            "writeToDirectory": true,\
                            "required": false,\
                            "validationRegEx": "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"\
                        }\
                    ]\
                }\
            ]\
        }\
    }\
}\
'

```