------

title: "Create conditionalAccessPolicy"title: "Create conditionalAccessPolicy"

description: "Create a new conditionalAccessPolicy."description: "Create a new conditionalAccessPolicy."

ms.localizationpriority: mediumms.localizationpriority: medium

author: "lisaychuang"author: "lisaychuang"

ms.reviewer: conditionalaccesspmms.reviewer: conditionalaccesspm

ms.subservice: "entra-sign-in"ms.subservice: "entra-sign-in"

doc_type: "apiPageType"doc_type: apiPageType

ms.date: 10/17/2024ms.date: 10/17/2024

------



# Create conditionalAccessPolicy# Create conditionalAccessPolicy



Namespace: microsoft.graphNamespace: microsoft.graph



Create a new [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]Create a new [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md).



## Permissions[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]



Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).## Permissions



<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-post-policies-permissions.md)]

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->

[!INCLUDE [rbac-conditionalaccess-apis-write](../includes/rbac-for-apis/rbac-conditionalaccess-apis-write.md)][!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-post-policies-permissions.md)]



> [!NOTE][!INCLUDE [rbac-conditionalaccess-apis-write](../includes/rbac-for-apis/rbac-conditionalaccess-apis-write.md)]

> This method has a [known permissions issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=13671) and may require consent to multiple permissions.

> [!NOTE]

## HTTP request> This method has a [known permissions issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=13671) and may require consent to multiple permissions.



<!-- { "blockType": "ignored" } -->## HTTP request



```http<!-- { "blockType": "ignored" } -->

POST /identity/conditionalAccess/policies

``````http

POST /identity/conditionalAccess/policies

## Request headers```



| Name          | Description      |## Request headers

|:--------------|:-----------------|

|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|| Name          | Description      |

| Content-Type  | application/json. Required. ||:--------------|:-----------------|

|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body| Content-Type  | application/json. Required. |



In the request body, supply a JSON representation of a [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.## Request body



A valid policy should contain at least one of the following:In the request body, supply a JSON representation of a [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.



* [application](../resources/conditionalaccessapplications.md) rule. For example, `'includeApplications': 'none'`.A valid policy should contain at least one [application](../resources/conditionalaccessapplications.md) rule - for example, `'includeApplications': 'none'`, one [user](../resources/conditionalaccessusers.md) rule - for example, `'includeUsers': 'none'`, and at least one [grant](../resources/conditionalaccessgrantcontrols.md)/[session](../resources/conditionalaccesssessioncontrols.md) control.

* [user](../resources/conditionalaccessusers.md) rule. For example, `'includeUsers': 'none'`.

* [grant](../resources/conditionalaccessgrantcontrols.md)/[session](../resources/conditionalaccesssessioncontrols.md) control.## Response



## ResponseIf successful, this method returns a `201 Created` response code and a new [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object in the response body.



If successful, this method returns a `201 Created` response code and a new [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object in the response body.## Examples



## Examples### Example 1: Require MFA to access Exchange Online outside of trusted locations



### Example 1: Require MFA to access Exchange Online outside of trusted locations#### Request

The following example shows a common request to require multifactor authentication for access to Exchange Online from modern authentication clients outside of trusted locations for a particular group.

#### Request

The following example shows a common request to require multifactor authentication for access to Exchange Online from modern authentication clients outside of trusted locations for a particular group.>**Note:** You must set up your trusted locations before using this operation.



>**Note:** You must set up your trusted locations before using this operation.

# [HTTP](#tab/http)

<!-- {<!-- {

  "blockType": "request",  "blockType": "request",

  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_1"  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_1"

}-->}-->



```http```http

POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/policiesPOST https://graph.microsoft.com/beta/identity/conditionalAccess/policies

Content-type: application/jsonContent-type: application/json



{{

    "displayName": "Access to EXO requires MFA",    "displayName": "Access to EXO requires MFA",

    "state": "enabled",    "state": "enabled",

    "conditions": {    "conditions": {

        "clientAppTypes": [        "clientAppTypes": [

            "mobileAppsAndDesktopClients",            "mobileAppsAndDesktopClients",

            "browser"            "browser"

        ],        ],

        "applications": {        "applications": {

            "includeApplications": [            "includeApplications": [

                "00000002-0000-0ff1-ce00-000000000000"                "00000002-0000-0ff1-ce00-000000000000"

            ]            ]

        },        },

        "users": {        "users": {

            "includeGroups": ["ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"]            "includeGroups": ["ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"]

        },        },

        "locations": {        "locations": {

            "includeLocations": [            "includeLocations": [

                "All"                "All"

            ],            ],

            "excludeLocations": [            "excludeLocations": [

                "AllTrusted"                "AllTrusted"

            ]            ]

        }        }

    },    },

    "grantControls": {    "grantControls": {

        "operator": "OR",        "operator": "OR",

        "builtInControls": [        "builtInControls": [

            "mfa"            "mfa"

        ]        ]

    }    }

}}

``````



# [C#](#tab/csharp)

#### Response[!INCLUDE [sample-code](../includes/snippets/csharp/create-conditionalaccesspolicy-from-conditionalaccessroot-1-csharp-snippets.md)]

[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.# [Go](#tab/go)

<!-- {[!INCLUDE [sample-code](../includes/snippets/go/create-conditionalaccesspolicy-from-conditionalaccessroot-1-go-snippets.md)]

  "blockType": "response",[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

  "truncated": true,

  "@odata.type": "microsoft.graph.conditionalAccessPolicy"# [Java](#tab/java)

}[!INCLUDE [sample-code](../includes/snippets/java/create-conditionalaccesspolicy-from-conditionalaccessroot-1-java-snippets.md)]

-->[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]



```http# [JavaScript](#tab/javascript)

HTTP/1.1 201 Created[!INCLUDE [sample-code](../includes/snippets/javascript/create-conditionalaccesspolicy-from-conditionalaccessroot-1-javascript-snippets.md)]

Content-type: application/json[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]



{# [PHP](#tab/php)

    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#conditionalAccess/policies/$entity",[!INCLUDE [sample-code](../includes/snippets/php/create-conditionalaccesspolicy-from-conditionalaccessroot-1-php-snippets.md)]

    "id": "7359d0e0-d8a9-4afa-8a93-e23e099d7be8",[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

    "displayName": "Access to EXO requires MFA",

    "createdDateTime": "2019-10-14T19:52:00.050958Z",# [Python](#tab/python)

    "modifiedDateTime": null,[!INCLUDE [sample-code](../includes/snippets/python/create-conditionalaccesspolicy-from-conditionalaccessroot-1-python-snippets.md)]

    "state": "enabled",[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

    "sessionControls": null,

    "conditions": {---

        "signInRiskLevels": [],

        "clientAppTypes": [#### Response

            "mobileAppsAndDesktopClients",

            "browser"The following example shows the response.

        ],

        "platforms": null,<!-- {

        "applications": {  "blockType": "response",

            "includeApplications": [  "truncated": false,

                "00000002-0000-0ff1-ce00-000000000000"  "@odata.type": "microsoft.graph.conditionalAccessPolicy"

            ],} -->

            "excludeApplications": [],

            "includeUserActions": []```http

        },HTTP/1.1 201 Created

        "users": {Content-type: application/json

            "includeUsers": [],

            "excludeUsers": [],{

            "includeGroups": [    "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccess/policies/$entity",

                "ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"    "id": "7359d0e0-d8a9-4afa-8a93-e23e099d7be8",

            ],    "displayName": "Access to EXO requires MFA",

            "excludeGroups": [],    "createdDateTime": "2019-10-14T19:52:00.050958Z",

            "includeRoles": [],    "modifiedDateTime": null,

            "excludeRoles": []    "state": "enabled",

        },    "sessionControls": null,

        "locations": {    "conditions": {

            "includeLocations": [        "signInRiskLevels": [],

                "All"        "clientAppTypes": [

            ],            "mobileAppsAndDesktopClients",

            "excludeLocations": [            "browser"

                "AllTrusted"        ],

            ]        "platforms": null,

        }        "deviceStates": null,

    },        "applications": {

    "grantControls": {            "includeApplications": [

        "operator": "OR",                "00000002-0000-0ff1-ce00-000000000000"

        "builtInControls": [            ],

            "mfa"            "excludeApplications": [],

        ],            "includeUserActions": []

        "customAuthenticationFactors": [],        },

        "termsOfUse": []        "users": {

    }            "includeUsers": [],

}            "excludeUsers": [],

```            "includeGroups": [

                "ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"

### Example 2: Block access to Exchange Online from nontrusted regions            ],

            "excludeGroups": [],

#### Request            "includeRoles": [],

The following example shows a request to block access to Exchange Online from non-trusted/unknown regions.            "excludeRoles": []

This example assumes that the named location with ID = 198ad66e-87b3-4157-85a3-8a7b51794ee9 corresponds to a list of non-trusted/unknown regions.        },

        "locations": {

            "includeLocations": [

<!-- {                "All"

  "blockType": "request",            ],

  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_2"            "excludeLocations": [

}-->                "AllTrusted"

            ]

```http        }

POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies    },

Content-type: application/json    "grantControls": {

        "operator": "OR",

{        "builtInControls": [

    "displayName": "Block access to EXO non-trusted regions.",            "mfa"

    "state": "enabled",        ],

    "conditions": {        "customAuthenticationFactors": [],

        "clientAppTypes": [        "termsOfUse": []

            "all"    }

        ],}

        "applications": {```

            "includeApplications": [

                "00000002-0000-0ff1-ce00-000000000000"### Example 2: Block access to Exchange Online from nontrusted regions

            ]

        },#### Request

        "users": {The following example shows a request to block access to Exchange Online from non-trusted/unknown regions.

            "includeGroups": ["ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"]This example assumes that the named location with id = 198ad66e-87b3-4157-85a3-8a7b51794ee9 corresponds to a list of non-trusted/unknown regions.

        },

        "locations": {

            "includeLocations": [# [HTTP](#tab/http)

                "198ad66e-87b3-4157-85a3-8a7b51794ee9"<!-- {

            ]  "blockType": "request",

        }  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_2"

    },}-->

    "grantControls": {

        "operator": "OR",```http

        "builtInControls": [POST https://graph.microsoft.com/beta/identity/conditionalAccess/policies

            "block"Content-type: application/json

        ]

    }{

}    "displayName": "Block access to EXO non-trusted regions.",

```    "state": "enabled",

    "conditions": {

        "clientAppTypes": [

            "all"

#### Response        ],

        "applications": {

The following example shows the response.            "includeApplications": [

>**Note:** The response object shown here might be shortened for readability.                "00000002-0000-0ff1-ce00-000000000000"

<!-- {            ]

  "blockType": "response",        },

  "truncated": true,        "users": {

  "@odata.type": "microsoft.graph.conditionalAccessPolicy"            "includeGroups": ["ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"]

}        },

-->        "locations": {

            "includeLocations": [

```http                "198ad66e-87b3-4157-85a3-8a7b51794ee9"

HTTP/1.1 201 Created            ]

Content-type: application/json        }

    },

{    "grantControls": {

    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#conditionalAccess/policies/$entity",        "operator": "OR",

    "id": "c98e6c3d-f6ca-42ea-a927-773b6f12a0c2",        "builtInControls": [

    "displayName": "Block access to EXO non-trusted regions.",            "block"

    "createdDateTime": "2019-10-14T19:53:11.3705634Z",        ]

    "modifiedDateTime": null,    }

    "state": "enabled",}

    "sessionControls": null,```

    "conditions": {

        "signInRiskLevels": [],# [C#](#tab/csharp)

        "clientAppTypes": [[!INCLUDE [sample-code](../includes/snippets/csharp/create-conditionalaccesspolicy-from-conditionalaccessroot-2-csharp-snippets.md)]

            "all"[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

        ],

        "platforms": null,# [Go](#tab/go)

        "applications": {[!INCLUDE [sample-code](../includes/snippets/go/create-conditionalaccesspolicy-from-conditionalaccessroot-2-go-snippets.md)]

            "includeApplications": [[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

                "00000002-0000-0ff1-ce00-000000000000"

            ],# [Java](#tab/java)

            "excludeApplications": [],[!INCLUDE [sample-code](../includes/snippets/java/create-conditionalaccesspolicy-from-conditionalaccessroot-2-java-snippets.md)]

            "includeUserActions": [][!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

        },

        "users": {# [JavaScript](#tab/javascript)

            "includeUsers": [],[!INCLUDE [sample-code](../includes/snippets/javascript/create-conditionalaccesspolicy-from-conditionalaccessroot-2-javascript-snippets.md)]

            "excludeUsers": [],[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

            "includeGroups": [

                "ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"# [PHP](#tab/php)

            ],[!INCLUDE [sample-code](../includes/snippets/php/create-conditionalaccesspolicy-from-conditionalaccessroot-2-php-snippets.md)]

            "excludeGroups": [],[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

            "includeRoles": [],

            "excludeRoles": []# [Python](#tab/python)

        },[!INCLUDE [sample-code](../includes/snippets/python/create-conditionalaccesspolicy-from-conditionalaccessroot-2-python-snippets.md)]

        "locations": {[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

            "includeLocations": [

                "198ad66e-87b3-4157-85a3-8a7b51794ee9"---

            ],

            "excludeLocations": []#### Response

        }

    },The following example shows the response.

    "grantControls": {

        "operator": "OR",<!-- {

        "builtInControls": [  "blockType": "response",

            "block"  "truncated": false,

        ],  "@odata.type": "microsoft.graph.conditionalAccessPolicy"

        "customAuthenticationFactors": [],} -->

        "termsOfUse": []

    }```http

}HTTP/1.1 201 Created

```Content-type: application/json



### Example 3: Use all conditions and controls{

    "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccess/policies/$entity",

#### Request    "id": "c98e6c3d-f6ca-42ea-a927-773b6f12a0c2",

The following example shows a request to use all the conditions and controls.    "displayName": "Block access to EXO non-trusted regions.",

    "createdDateTime": "2019-10-14T19:53:11.3705634Z",

# [HTTP](#tab/http)    "modifiedDateTime": null,

<!-- {    "state": "enabled",

  "blockType": "request",    "sessionControls": null,

  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_3"    "conditions": {

}-->        "signInRiskLevels": [],

        "clientAppTypes": [

```http            "all"

POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies        ],

Content-type: application/json        "platforms": null,

        "deviceStates": null,

{        "applications": {

    "displayName": "Demo app for documentation",            "includeApplications": [

    "state": "disabled",                "00000002-0000-0ff1-ce00-000000000000"

    "conditions": {            ],

        "signInRiskLevels": [            "excludeApplications": [],

            "high",            "includeUserActions": []

            "medium"        },

        ],        "users": {

        "clientAppTypes": [            "includeUsers": [],

            "mobileAppsAndDesktopClients",            "excludeUsers": [],

            "exchangeActiveSync",            "includeGroups": [

            "other"                "ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"

        ],            ],

        "applications": {            "excludeGroups": [],

            "includeApplications": [            "includeRoles": [],

                "All"            "excludeRoles": []

            ],        },

            "excludeApplications": [        "locations": {

                "499b84ac-1321-427f-aa17-267ca6975798",            "includeLocations": [

                "00000007-0000-0000-c000-000000000000",                "198ad66e-87b3-4157-85a3-8a7b51794ee9"

                "de8bc8b5-d9f9-48b1-a8ad-b748da725064",            ],

                "00000012-0000-0000-c000-000000000000",            "excludeLocations": []

                "797f4846-ba00-4fd7-ba43-dac1f8f63013",        }

                "05a65629-4c1b-48c1-a78b-804c4abdd4af",    },

                "7df0a125-d3be-4c96-aa54-591f83ff541c"    "grantControls": {

            ],        "operator": "OR",

            "includeUserActions": []        "builtInControls": [

        },            "block"

        "users": {        ],

            "includeUsers": [        "customAuthenticationFactors": [],

                "a702a13d-a437-4a07-8a7e-8c052de62dfd"        "termsOfUse": []

            ],    }

            "excludeUsers": [}

                "124c5b6a-ffa5-483a-9b88-04c3fce5574a",```

                "GuestsOrExternalUsers"

            ],### Example 3: Use all conditions/controls

            "includeGroups": [],

            "excludeGroups": [],#### Request

            "includeRoles": [The following example shows a request to use all the conditions/controls.

                "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",

                "cf1c38e5-3621-4004-a7cb-879624dced7c",# [HTTP](#tab/http)

                "c4e39bd9-1100-46d3-8c65-fb160da0071f"<!-- {

            ],  "blockType": "request",

            "excludeRoles": [  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_3"

                "b0f54661-2d74-4c50-afa3-1ec803f12efe"}-->

            ]

        },```http

        "platforms": {POST https://graph.microsoft.com/beta/identity/conditionalAccess/policies

            "includePlatforms": [Content-type: application/json

                "all"

            ],{

            "excludePlatforms": [    "displayName": "Demo app for documentation",

                "iOS",    "state": "disabled",

                "windowsPhone"    "conditions": {

            ]        "signInRiskLevels": [

        },            "high",

        "locations": {            "medium"

            "includeLocations": [        ],

                "AllTrusted"        "clientAppTypes": [

            ],            "mobileAppsAndDesktopClients",

            "excludeLocations": [            "exchangeActiveSync",

                "00000000-0000-0000-0000-000000000000",            "other"

                "d2136c9c-b049-47ae-b9cf-316e04ef7198"        ],

            ]        "applications": {

        }            "includeApplications": [

    },                "All"

    "grantControls": {            ],

        "operator": "OR",            "excludeApplications": [

        "builtInControls": [                "499b84ac-1321-427f-aa17-267ca6975798",

            "mfa",                "00000007-0000-0000-c000-000000000000",

            "compliantDevice",                "de8bc8b5-d9f9-48b1-a8ad-b748da725064",

            "domainJoinedDevice",                "00000012-0000-0000-c000-000000000000",

            "approvedApplication",                "797f4846-ba00-4fd7-ba43-dac1f8f63013",

            "compliantApplication"                "05a65629-4c1b-48c1-a78b-804c4abdd4af",

        ],                "7df0a125-d3be-4c96-aa54-591f83ff541c"

        "customAuthenticationFactors": [],            ],

        "termsOfUse": [            "includeUserActions": []

            "ce580154-086a-40fd-91df-8a60abac81a0",        },

            "7f29d675-caff-43e1-8a53-1b8516ed2075"        "users": {

        ]            "includeUsers": [

    },                "a702a13d-a437-4a07-8a7e-8c052de62dfd"

    "sessionControls": {            ],

        "applicationEnforcedRestrictions": null,            "excludeUsers": [

        "persistentBrowser": null,                "124c5b6a-ffa5-483a-9b88-04c3fce5574a",

        "cloudAppSecurity": {                "GuestsOrExternalUsers"

            "cloudAppSecurityType": "blockDownloads",            ],

            "isEnabled": true            "includeGroups": [],

        },            "excludeGroups": [],

        "signInFrequency": {            "includeRoles": [

            "value": 4,                "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",

            "type": "hours",                "cf1c38e5-3621-4004-a7cb-879624dced7c",

            "isEnabled": true                "c4e39bd9-1100-46d3-8c65-fb160da0071f"

        }            ],

    }            "excludeRoles": [

}                "b0f54661-2d74-4c50-afa3-1ec803f12efe"

```            ]

        },

        "platforms": {

#### Response            "includePlatforms": [

                "all"

The following example shows the response.            ],

>**Note:** The response object shown here might be shortened for readability.            "excludePlatforms": [

<!-- {                "iOS",

  "blockType": "response",                "windowsPhone"

  "truncated": true,            ]

  "@odata.type": "microsoft.graph.conditionalAccessPolicy"        },

}        "locations": {

-->            "includeLocations": [

                "AllTrusted"

```http            ],

HTTP/1.1 201 Created            "excludeLocations": [

Content-type: application/json                "00000000-0000-0000-0000-000000000000",

                "d2136c9c-b049-47ae-b9cf-316e04ef7198"

{            ]

    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#conditionalAccess/policies/$entity",        },

    "id": "6b5e999b-0ba8-4186-a106-e0296c1c4358",        "deviceStates": {

    "displayName": "Demo app for documentation",            "includeStates": [

    "createdDateTime": "2019-09-26T23:12:16.0792706Z",                "All"

    "modifiedDateTime": null,            ],

    "state": "disabled",            "excludeStates": [

    "conditions": {                "Compliant"

        "signInRiskLevels": [            ]

            "high",        }

            "medium"    },

        ],    "grantControls": {

        "clientAppTypes": [        "operator": "OR",

            "mobileAppsAndDesktopClients",        "builtInControls": [

            "exchangeActiveSync",            "mfa",

            "other"            "compliantDevice",

        ],            "domainJoinedDevice",

        "applications": {            "approvedApplication",

            "includeApplications": [            "compliantApplication"

                "All"        ],

            ],        "customAuthenticationFactors": [],

            "excludeApplications": [        "termsOfUse": [

                "499b84ac-1321-427f-aa17-267ca6975798",            "ce580154-086a-40fd-91df-8a60abac81a0",

                "00000007-0000-0000-c000-000000000000",            "7f29d675-caff-43e1-8a53-1b8516ed2075"

                "de8bc8b5-d9f9-48b1-a8ad-b748da725064",        ]

                "00000012-0000-0000-c000-000000000000",    },

                "797f4846-ba00-4fd7-ba43-dac1f8f63013",    "sessionControls": {

                "05a65629-4c1b-48c1-a78b-804c4abdd4af",        "applicationEnforcedRestrictions": null,

                "7df0a125-d3be-4c96-aa54-591f83ff541c"        "persistentBrowser": null,

            ],        "cloudAppSecurity": {

            "includeUserActions": []            "cloudAppSecurityType": "blockDownloads",

        },            "isEnabled": true

        "users": {        },

            "includeUsers": [        "signInFrequency": {

                "a702a13d-a437-4a07-8a7e-8c052de62dfd"            "value": 4,

            ],            "type": "hours",

            "excludeUsers": [            "isEnabled": true

                "124c5b6a-ffa5-483a-9b88-04c3fce5574a",        }

                "GuestsOrExternalUsers"    }

            ],}

            "includeGroups": [],```

            "excludeGroups": [],

            "includeRoles": [# [C#](#tab/csharp)

                "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",[!INCLUDE [sample-code](../includes/snippets/csharp/create-conditionalaccesspolicy-from-conditionalaccessroot-3-csharp-snippets.md)]

                "cf1c38e5-3621-4004-a7cb-879624dced7c",[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

                "c4e39bd9-1100-46d3-8c65-fb160da0071f"

            ],# [Go](#tab/go)

            "excludeRoles": [[!INCLUDE [sample-code](../includes/snippets/go/create-conditionalaccesspolicy-from-conditionalaccessroot-3-go-snippets.md)]

                "b0f54661-2d74-4c50-afa3-1ec803f12efe"[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

            ]

        },# [Java](#tab/java)

        "platforms": {[!INCLUDE [sample-code](../includes/snippets/java/create-conditionalaccesspolicy-from-conditionalaccessroot-3-java-snippets.md)]

            "includePlatforms": [[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

                "all"

            ],# [JavaScript](#tab/javascript)

            "excludePlatforms": [[!INCLUDE [sample-code](../includes/snippets/javascript/create-conditionalaccesspolicy-from-conditionalaccessroot-3-javascript-snippets.md)]

                "iOS",[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

                "windowsPhone"

            ]# [PHP](#tab/php)

        },[!INCLUDE [sample-code](../includes/snippets/php/create-conditionalaccesspolicy-from-conditionalaccessroot-3-php-snippets.md)]

        "locations": {[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

            "includeLocations": [

                "AllTrusted"# [Python](#tab/python)

            ],[!INCLUDE [sample-code](../includes/snippets/python/create-conditionalaccesspolicy-from-conditionalaccessroot-3-python-snippets.md)]

            "excludeLocations": [[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

                "00000000-0000-0000-0000-000000000000",

                "d2136c9c-b049-47ae-b9cf-316e04ef7198"---

            ]

        }#### Response

    },

    "grantControls": {The following example shows the response.

        "operator": "OR",

        "builtInControls": [<!-- {

            "mfa",  "blockType": "response",

            "compliantDevice",  "truncated": false,

            "domainJoinedDevice",  "@odata.type": "microsoft.graph.conditionalAccessPolicy"

            "approvedApplication",} -->

            "compliantApplication"

        ],```http

        "customAuthenticationFactors": [],HTTP/1.1 201 Created

        "termsOfUse": [Content-type: application/json

            "ce580154-086a-40fd-91df-8a60abac81a0",

            "7f29d675-caff-43e1-8a53-1b8516ed2075"{

        ]    "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccess/policies/$entity",

    },    "id": "6b5e999b-0ba8-4186-a106-e0296c1c4358",

    "sessionControls": {    "displayName": "Demo app for documentation",

        "applicationEnforcedRestrictions": null,    "createdDateTime": "2019-09-26T23:12:16.0792706Z",

        "persistentBrowser": null,    "modifiedDateTime": null,

        "cloudAppSecurity": {    "state": "disabled",

            "cloudAppSecurityType": "blockDownloads",    "conditions": {

            "isEnabled": true        "signInRiskLevels": [

        },            "high",

        "signInFrequency": {            "medium"

            "value": 4,        ],

            "type": "hours",        "clientAppTypes": [

            "isEnabled": true            "mobileAppsAndDesktopClients",

        }            "exchangeActiveSync",

    }            "other"

}        ],

```        "applications": {

            "includeApplications": [

### Example 4: Require MFA to Exchange Online from noncompliant devices                "All"

            ],

#### Request            "excludeApplications": [

The following example shows a request to require MFA to Exchange Online from noncompliant devices.                "499b84ac-1321-427f-aa17-267ca6975798",

                "00000007-0000-0000-c000-000000000000",

                "de8bc8b5-d9f9-48b1-a8ad-b748da725064",

<!-- {                "00000012-0000-0000-c000-000000000000",

  "blockType": "request",                "797f4846-ba00-4fd7-ba43-dac1f8f63013",

  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_4"                "05a65629-4c1b-48c1-a78b-804c4abdd4af",

}-->                "7df0a125-d3be-4c96-aa54-591f83ff541c"

            ],

```http            "includeUserActions": []

POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies        },

Content-type: application/json        "users": {

            "includeUsers": [

{                "a702a13d-a437-4a07-8a7e-8c052de62dfd"

    "displayName": "Require MFA to EXO from non-compliant devices.",            ],

    "state": "enabled",            "excludeUsers": [

    "conditions": {                "124c5b6a-ffa5-483a-9b88-04c3fce5574a",

        "applications": {                "GuestsOrExternalUsers"

            "includeApplications": [            ],

                "00000002-0000-0ff1-ce00-000000000000"            "includeGroups": [],

            ]            "excludeGroups": [],

        },            "includeRoles": [

        "users": {                "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",

            "includeGroups": ["ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"]                "cf1c38e5-3621-4004-a7cb-879624dced7c",

        }                "c4e39bd9-1100-46d3-8c65-fb160da0071f"

    },            ],

    "grantControls": {            "excludeRoles": [

        "operator": "OR",                "b0f54661-2d74-4c50-afa3-1ec803f12efe"

        "builtInControls": [            ]

            "mfa"        },

        ]        "platforms": {

    }            "includePlatforms": [

}                "all"

```            ],

            "excludePlatforms": [

                "iOS",

#### Response                "windowsPhone"

            ]

The following example shows the response.        },

>**Note:** The response object shown here might be shortened for readability.        "locations": {

<!-- {            "includeLocations": [

  "blockType": "response",                "AllTrusted"

  "truncated": true,            ],

  "@odata.type": "microsoft.graph.conditionalAccessPolicy"            "excludeLocations": [

}                "00000000-0000-0000-0000-000000000000",

-->                "d2136c9c-b049-47ae-b9cf-316e04ef7198"

            ]

```http        },

HTTP/1.1 201 Created        "deviceStates": {

Content-type: application/json            "includeStates": [

                "All"

{            ],

    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#conditionalAccess/policies/$entity",            "excludeStates": [

     "id": "b3f1298e-8e93-49af-bdbf-94cf7d453ca3",                "Compliant"

    "displayName": "Require MFA to EXO from non-compliant devices.",            ]

    "createdDateTime": "2020-04-01T00:55:12.9571747Z",        }

    "modifiedDateTime": null,    },

    "state": "enabled",    "grantControls": {

    "sessionControls": null,        "operator": "OR",

    "conditions": {        "builtInControls": [

        "userRiskLevels": [],            "mfa",

        "signInRiskLevels": [],            "compliantDevice",

        "clientAppTypes": [            "domainJoinedDevice",

            "all"            "approvedApplication",

        ],            "compliantApplication"

        "platforms": null,        ],

        "locations": null,        "customAuthenticationFactors": [],

        "times": null,        "termsOfUse": [

        "applications": {            "ce580154-086a-40fd-91df-8a60abac81a0",

            "includeApplications": [            "7f29d675-caff-43e1-8a53-1b8516ed2075"

                "00000002-0000-0ff1-ce00-000000000000"        ]

            ],    },

            "excludeApplications": [],    "sessionControls": {

            "includeUserActions": [],        "applicationEnforcedRestrictions": null,

            "includeProtectionLevels": []        "persistentBrowser": null,

        },        "cloudAppSecurity": {

        "users": {            "cloudAppSecurityType": "blockDownloads",

            "includeUsers": [],            "isEnabled": true

            "excludeUsers": [],        },

            "includeGroups": [        "signInFrequency": {

                "ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"            "value": 4,

            ],            "type": "hours",

            "excludeGroups": [],            "isEnabled": true

            "includeRoles": [],        }

            "excludeRoles": []    }

        }}

    },```

    "grantControls": {

        "operator": "OR",### Example 4: Require MFA to Exchange Online from non-compliant devices

        "builtInControls": [

            "mfa">**Note:** We are deprecating the **deviceStates** condition, and it may be removed in the future. Going forward, use **devices** condition.

        ],

        "customAuthenticationFactors": [],#### Request

        "termsOfUse": []The following example shows a request to require MFA to Exchange Online from non-compliant devices.

    }

}

```# [HTTP](#tab/http)

<!-- {

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98  "blockType": "request",

2019-02-04 14:57:30 UTC -->  "name": "create_conditionalaccesspolicy_from_conditionalaccessroot_4"

<!-- {}-->

  "type": "#page.annotation",

  "description": "Create conditionalAccessPolicy",```http

  "keywords": "",POST https://graph.microsoft.com/beta/identity/conditionalAccess/policies

  "section": "documentation",Content-type: application/json

  "tocPath": ""

}-->{
    "displayName": "Require MFA to EXO from non-complaint devices.",
    "state": "enabled",
    "conditions": {
        "applications": {
            "includeApplications": [
                "00000002-0000-0ff1-ce00-000000000000"
            ]
        },
        "users": {
            "includeGroups": ["ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"]
        },
        "devices": {
            "includeDevices": [
                "All"
            ],
            "excludeDevices": [
                "Compliant"
            ]
        }
    },
    "grantControls": {
        "operator": "OR",
        "builtInControls": [
            "mfa"
        ]
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-conditionalaccesspolicy-from-conditionalaccessroot-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-conditionalaccesspolicy-from-conditionalaccessroot-4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-conditionalaccesspolicy-from-conditionalaccessroot-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-conditionalaccesspolicy-from-conditionalaccessroot-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-conditionalaccesspolicy-from-conditionalaccessroot-4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-conditionalaccesspolicy-from-conditionalaccessroot-4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccess/policies/$entity",
     "id": "b3f1298e-8e93-49af-bdbf-94cf7d453ca3",
    "displayName": "Require MFA to EXO from non-complaint devices.",
    "createdDateTime": "2020-04-01T00:55:12.9571747Z",
    "modifiedDateTime": null,
    "state": "enabled",
    "sessionControls": null,
    "conditions": {
        "userRiskLevels": [],
        "signInRiskLevels": [],
        "clientAppTypes": [
            "all"
        ],
        "platforms": null,
        "locations": null,
        "times": null,
        "deviceStates": null,
        "applications": {
            "includeApplications": [
                "00000002-0000-0ff1-ce00-000000000000"
            ],
            "excludeApplications": [],
            "includeUserActions": [],
            "includeProtectionLevels": []
        },
        "users": {
            "includeUsers": [],
            "excludeUsers": [],
            "includeGroups": [
                "ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"
            ],
            "excludeGroups": [],
            "includeRoles": [],
            "excludeRoles": []
        },
        "devices": {
            "includeDevices": [
                "All"
            ],
            "excludeDevices": [
                "Compliant"
            ]
        }
    },
    "grantControls": {
        "operator": "OR",
        "builtInControls": [
            "mfa"
        ],
        "customAuthenticationFactors": [],
        "termsOfUse": []
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create conditionalAccessPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


