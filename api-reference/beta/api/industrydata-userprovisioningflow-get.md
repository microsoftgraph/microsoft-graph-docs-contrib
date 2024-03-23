---
title: "Get userProvisioningFlow"
description: "Read the properties and relationships of a userProvisioningFlow object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Get userProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-userprovisioningflow-get-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-userprovisioningflow-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/OutboundProvisioningFlowSets/{id}/provisioningFlows/{id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userProvisioningFlow](../resources/industrydata-userprovisioningflow.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_userprovisioningflow"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/dbd36d16-c574-4ed8-3ac7-08dc4ac6fb7f
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.userProvisioningFlow"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/testprodbetalocal_sds-ppe/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows/$entity",
    "@odata.type": "#microsoft.graph.industryData.userProvisioningFlow",
    "id": "dbd36d16-c574-4ed8-3ac7-08dc4ac6fb7f",
    "createdDateTime": "2024-03-23T00:24:32.3286035Z",
    "lastModifiedDateTime": "2024-03-23T00:24:32.3286035Z",
    "readinessStatus": "disabled",
    "createUnmatchedUsers": true,
    "managementOptions": {
        "additionalAttributes": [
            "userGradeLevel"
        ],
        "additionalOptions": {
            "markAllStudentsAsMinors": true,
            "allowStudentContactAssociation": false
        }
    },
    "creationOptions": {
        "configurations": [
            {
                "licenseSkus": [
                    "Sku1"
                ],
                "defaultPasswordSettings": {
                    "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
                    "password": "***************"
                },
                "roleGroup@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows('dbd36d16-c574-4ed8-3ac7-08dc4ac6fb7f')/microsoft.graph.industryData.userProvisioningFlow/creationOptions/configurations/roleGroup/$entity",
                "roleGroup": {
                    "id": "students",
                    "displayName": "Students",
                    "roles": [
                        {
                            "code": "student"
                        }
                    ]
                }
            },
            {
                "licenseSkus": [
                    "Sku2"
                ],
                "defaultPasswordSettings": {
                    "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
                    "password": "***************"
                },
                "roleGroup@odata.context": "https://canary.graph.microsoft.com/testprodbetalocal_sds-ppe/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows('dbd36d16-c574-4ed8-3ac7-08dc4ac6fb7f')/microsoft.graph.industryData.userProvisioningFlow/creationOptions/configurations/roleGroup/$entity",
                "roleGroup": {
                    "id": "staff",
                    "displayName": "Staff",
                    "roles": [
                        {
                            "code": "adjunct"
                        },
                        {
                            "code": "administrator"
                        },
                        {
                            "code": "advisor"
                        },
                        {
                            "code": "affiliate"
                        },
                        {
                            "code": "aide"
                        },
                        {
                            "code": "alumni"
                        },
                        {
                            "code": "assistant"
                        },
                        {
                            "code": "chair"
                        },
                        {
                            "code": "coach"
                        },
                        {
                            "code": "faculty"
                        },
                        {
                            "code": "instructor"
                        },
                        {
                            "code": "itAdmin"
                        },
                        {
                            "code": "lecturer"
                        },
                        {
                            "code": "nurse"
                        },
                        {
                            "code": "occupationalTherapist"
                        },
                        {
                            "code": "officeStaff"
                        },
                        {
                            "code": "paraprofessional"
                        },
                        {
                            "code": "physicalTherapist"
                        },
                        {
                            "code": "principal"
                        },
                        {
                            "code": "proctor"
                        },
                        {
                            "code": "professor"
                        },
                        {
                            "code": "researcher"
                        },
                        {
                            "code": "specialServices"
                        },
                        {
                            "code": "speechTherapist"
                        },
                        {
                            "code": "staff"
                        },
                        {
                            "code": "substitute"
                        },
                        {
                            "code": "teacher"
                        },
                        {
                            "code": "teacherAssistant"
                        },
                        {
                            "code": "visionTherapist"
                        }
                    ]
                }
            }
        ]
    }
}
```
