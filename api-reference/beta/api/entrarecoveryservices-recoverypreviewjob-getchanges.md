---
title: "recoveryPreviewJob: getChanges"
description: "Get a paginated collection of change objects that will be applied if the recovery operation is executed."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# recoveryPreviewJob: getChanges

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a paginated collection of [recoveryChangeObjectBase](../resources/entrarecoveryservices-recoverychangeobjectbase.md) objects that will be applied if a recovery operation is executed for the same snapshot and filtering criteria.

This method can only be called on a [preview job](../resources/entrarecoveryservices-recoverypreviewjob.md) that has a status of `successful`. The changes returned represent the differences between the current tenant state and the state at the time of the snapshot.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entrarecoveryservices_recoverypreviewjob_getchanges" } -->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-recoverypreviewjob-getchanges-permissions.md)]

[!INCLUDE [rbac-entrarecoveryservices-apis-read](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recovery/snapshots/{snapshot-id}/recoveryPreviewJobs/{job-id}/getChanges
```

## Function parameters

Don't supply a function parameter for this method.

## Optional query parameters

This method supports the `$top`, `$skip`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The default and maximum page sizes are 100 and 999 change objects respectively.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase](../resources/entrarecoveryservices-recoverychangeobjectbase.md) objects in the response body.

## Examples

### Example 1: Get changes showing objects that will be updated

The following example shows a request that retrieves changes where objects in the current tenant will be updated to match the snapshot state.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "recoverypreviewjobthis.getchanges.example1"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryPreviewJobs/d3f8e7e8-7e87-4a7f-9d2c-c1c2d7e8e1f1/getChanges
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/recoverypreviewjobthisgetchangesexample1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{  
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryPreviewJobs/d3f8e7e8-7e87-4a7f-9d2c-c1c2d7e8e1f1/getChanges",
   "@odata.nextLink": "https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryPreviewJobs/d3f8e7e8-7e87-4a7f-9d2c-c1c2d7e8e1f1/getChanges?$skiptoken=RFNwdAIAAQAAACA6X1NNVFBfYnJhemlsc291dGhAbWl",
   "value":
    [
        {
            "entityTypeName": "user",
            "id": "36e07e06-72c1-4b2c-b547-c5084413b88b",
            "displayName": "JD",
            "recoveryAction": "update",
            "deltaFromCurrent": 
            {  
                "@odata.type": "#microsoft.graph.user",
                "displayName": "John Doe",
                "userPrincipalName": "johndoe@example.com",
                "mail": "johndoe@example.com",
                "jobTitle": "Software Engineer",
                "department": "Engineering",
                "officeLocation": "Redmond",
                "mobilePhone": "+1 555-555-5555",
                "businessPhones": ["+1 555-555-5555"],
                "preferredLanguage": "en-US",
                "accountEnabled": true,
                "passwordProfile": {
                "forceChangePasswordNextSignIn": false
                }
            },

            "currentState":
            {
                "@odata.type": "#microsoft.graph.user",
                "displayName": "JD",
                "userPrincipalName": "johndoe@example2.com",
                "mail": "jdoe@example.com",
                "jobTitle": "Product Manager",
                "department": "Management",
                "officeLocation": "San Francisco",
                "mobilePhone": "+1 999-999-9999",
                "businessPhones": ["+1 555-888-5555"],
                "preferredLanguage": "en-SP",
                "accountEnabled": false,
                "passwordProfile": {
                "forceChangePasswordNextSignIn": true
                }
            }
        },

        {
            "entityTypeName": "user",
            "id": "36e07e06-72c1-4b2c-b547-c5084413b88b",
            "displayName": "Test Display Name2",
            "recoveryAction": "restore",
            "deltaFromCurrent":
            {
                "@odata.type": "#microsoft.graph.user",
                "displayName": "Test Display Name1", 
                "deletedDateTime": null
            },

            "currentState":
            {
                "@odata.type": "#microsoft.graph.user",
                "displayName": "Test Display Name2",
                "deletedDateTime": "2024-08-20T00:00:00Z"
            }
        },

        {
            "entityTypeName": "user",
            "id": "36e07e06-72c1-4b2c-b547-c5084413b88b",
            "displayName": "Test Display Name2",
            "recoveryAction": "softDelete",
            "deltaFromCurrent":
            {   
                "@odata.type": "#microsoft.graph.user",
                "displayName": "Test Display Name1",
                "@removed": {
                    "reason": "changed"  
                },
                "deletedDateTime": "2024-08-26T00:00:00Z" 
            },

            "currentState":
            {
                "@odata.type": "#microsoft.graph.user",
                "displayName": "Test Display Name2",
                "deletedDateTime": null
            }
        },
        {
            "entityTypeName": "user",
            "id": "36e07e06-72c1-4b2c-b547-c5084413b88b",
            "displayName": "testUser",
            "recoveryAction": "softDelete",
            "deltaFromCurrent":
            { 
                "@odata.type": "#microsoft.graph.user",
                "@removed": {
                    "reason": "changed"  
                },
                "deletedDateTime": "2024-08-26T00:00:00Z" 
            },

            "currentState":
            {
                "@odata.type": "#microsoft.graph.user",
                "deletedDateTime": null
            }
        },

        {
            "entityTypeName": "group",
            "id": "ef043007-ea2e-44ba-a8ff-59c1cfc08dac",
            "displayName": "Engineering Team",
            "recoveryAction": "update",
            "deltaFromCurrent":
             {
                "@odata.type": "#microsoft.graph.group",
                "displayName": "Management Team",
                "description": "Group for the engineering team",
                "securityEnabled": true,
                "visibility": "Private",
                "renewedDateTime": "2023-06-01T00:00:00Z",
                "members@delta": [ 

                    {
                        "@odata.type": "user",
                        "id": "632f6bb2-3ec8-4c1f-9073-0027a8c6859",
                        "@removed": {
                            "reason": "changed"}
                    },
                    { 
                        "@odata.type": "user",
                        "id": "37de1ae3-408f-4702-8636-20824abda004"
                    }
                ],
                "owners@delta": [ 
                    {
                        "id": "34567890-3456-3456-3456-3456789012cd",
                        "displayName": "John Miler",
                        "userPrincipalName": "johnmiller@example.com"
                    }
                ]
            },
            "currentState":
             {
                "@odata.type": "#microsoft.graph.group",
                "displayName": "Engineering Team",
                "description": "Management Team's group",
                "securityEnabled": false,
                "visibility": "Public",
                "renewedDateTime": "2023-07-01T00:00:00Z"
             }
        },

        {
            "entityTypeName": "conditionalAccessPolicy",
            "id": "863f9620-8b90-4296-b8dc-6ff480da5c8b",
            "displayName": "Require MFA for Admins",
            "recoveryAction": "update",
            "deltaFromCurrent":
             {
                "@odata.type": "#microsoft.graph.conditionalAccessPolicy",
                "displayName": "Require MFA for Finance Team",
                "conditions": {
                    "users": {
                    "includeUsers": ["finance1", "finance2"],
                    "excludeUsers": ["backup-account"]
                    },
                    "applications": {
                    "includeApplications": ["financeApp1", "financeApp2"],
                    "excludeApplications": ["financeApp3"]
                    },
                    "signInRiskLevels": ["medium"],
                    "devicePlatforms": ["iOS", "Android"],
                    "locations": {
                    "includeLocations": ["office1", "office2"],
                    "excludeLocations": ["remote"]
                    },
                    "clientAppTypes": ["mobileAppsAndDesktopClients"]
                },
                "grantControls": {
                    "operator": "OR",
                    "builtInControls": ["mfa", "passwordChange"]
                },
                "sessionControls": {
                    "applicationEnforcedRestrictions": null,
                    "cloudAppSecurity": null,
                    "signInFrequency": {
                    "value": 14,
                    "type": "days"
                    }
                },
                "state": "enabled"
             }  ,
            "currentState":
             {
                "@odata.type": "#microsoft.graph.conditionalAccessPolicy",
                "displayName": "Require MFA for Admins",
                "conditions": {
                    "users": {
                    "includeUsers": ["admin1", "admin2"],
                    "excludeUsers": ["emergency-access-account"]
                    },
                    "applications": {
                    "includeApplications": ["app1", "app2"],
                    "excludeApplications": ["app3"]
                    },
                    "signInRiskLevels": ["high"],
                    "devicePlatforms": ["windows", "macOS"],
                    "locations": {
                    "includeLocations": ["location1", "location2"],
                    "excludeLocations": ["location3"]
                    },
                    "clientAppTypes": ["browser", "mobileAppsAndDesktopClients"]
                },
                "grantControls": {
                    "operator": "AND",
                    "builtInControls": ["mfa", "compliantDevice"]
                },
                "sessionControls": {
                    "applicationEnforcedRestrictions": null,
                    "cloudAppSecurity": null,
                    "signInFrequency": {
                    "value": 7,
                    "type": "days"
                    }
                },
                "state": "disabled"
            }
          }
    ]      
 }

```

