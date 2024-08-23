---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta security cases ediscovery-cases legal-holds create --ediscovery-case-id {ediscoveryCase-id} --body '{\
    "displayName": "My legalHold with sources",\
    "description": "Created from Graph API",\
    "userSources@odata.bind": [\
        {\
            "@odata.type": "microsoft.graph.security.userSource",\
            "email": "SalesTeam@contoso.com"\
        }\
    ],\
    "siteSources@odata.bind": [\
        {\
            "@odata.type": "microsoft.graph.security.siteSource",\
            "site": {\
                "webUrl": "https://m365x809305.sharepoint.com/sites/Design-topsecret"\
            }\
        }\
    ]\
}\
'

```