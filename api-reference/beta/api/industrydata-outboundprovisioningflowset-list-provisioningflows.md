---
title: "List provisioningFlow objects"
description: "Get a list of the provisioningFlow objects and their properties."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# List provisioningFlow objects

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [provisioningFlow](../resources/industrydata-provisioningflow.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-outboundprovisioningflowset-list-provisioningflows-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-outboundprovisioningflowset-list-provisioningflows-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/outboundProvisioningFlowSets/{id}/provisioningFlows
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

If successful, this method returns a `200 OK` response code and a collection of [provisioningFlow](../resources/industrydata-provisioningflow.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_provisioningflow"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/outboundProvisioningFlowSets/8c33d025-5e64-4550-2aa3-08dc4ac66fca/provisioningFlows
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-provisioningflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-provisioningflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-provisioningflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-provisioningflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-provisioningflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-provisioningflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-provisioningflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.provisioningFlow)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('8c33d025-5e64-4550-2aa3-08dc4ac66fca')/provisioningFlows",
    "value": [
        {
            "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",
            "id": "51f99e09-bdc5-47ff-7a0a-08dc4ac74cf1",
            "createdDateTime": "2024-03-25T22:29:22.6303479Z",
            "lastModifiedDateTime": "2024-03-25T22:29:22.6303479Z",
            "readinessStatus": "disabled",
            "creationOptions": {
                "createBasedOnRoleGroup": true,
                "createBasedOnOrgPlusRoleGroup": false
            }
        },
        {
            "@odata.type": "#microsoft.graph.industryData.classGroupProvisioningFlow",
            "id": "6207e7d7-5eba-4ddc-e607-08dc4ac77409",
            "createdDateTime": "2024-03-25T22:29:16.1177912Z",
            "lastModifiedDateTime": "2024-03-25T22:29:16.1177912Z",
            "readinessStatus": "disabled",
            "configuration": {
                "additionalAttributes": [
                    "courseTitle",
                    "courseCode",
                    "courseSubject",
                    "courseGradeLevel",
                    "courseExternalId",
                    "academicSessionTitle",
                    "academicSessionExternalId"
                ],
                "additionalOptions": {
                    "createTeam": true,
                    "writeDisplayNameOnCreateOnly": true
                },
                "enrollmentMappings": {
                    "ownerEnrollmentMappings": [
                        {
                            "code": "teacher"
                        },
                        {
                            "code": "proctor"
                        },
                        {
                            "code": "teacherAssistant"
                        },
                        {
                            "code": "paraprofessional"
                        },
                        {
                            "code": "physicalTherapist"
                        },
                        {
                            "code": "speechTherapist"
                        },
                        {
                            "code": "visionTherapist"
                        },
                        {
                            "code": "occupationalTherapist"
                        },
                        {
                            "code": "staff"
                        }
                    ],
                    "memberEnrollmentMappings": [
                        {
                            "code": "student"
                        },
                        {
                            "code": "substitute"
                        },
                        {
                            "code": "aide"
                        },
                        {
                            "code": "proctor"
                        },
                        {
                            "code": "teacherAssistant"
                        },
                        {
                            "code": "paraprofessional"
                        },
                        {
                            "code": "physicalTherapist"
                        },
                        {
                            "code": "speechTherapist"
                        },
                        {
                            "code": "visionTherapist"
                        },
                        {
                            "code": "occupationalTherapist"
                        },
                        {
                            "code": "staff"
                        }
                    ]
                }
            }
        },
        {
            "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
            "id": "7b355e84-0af2-42fd-d392-08dc4ac68cf2",
            "createdDateTime": "2024-03-25T22:29:05.4272368Z",
            "lastModifiedDateTime": "2024-03-25T22:29:05.4272368Z",
            "readinessStatus": "disabled",
            "creationOptions": {
                "createBasedOnOrg": true,
                "createBasedOnOrgPlusRoleGroup": true
            }
        },
        {
            "@odata.type": "#microsoft.graph.industryData.userProvisioningFlow",
            "id": "dfeec276-d507-4008-d393-08dc4ac68cf2",
            "createdDateTime": "2024-03-25T22:29:10.0687495Z",
            "lastModifiedDateTime": "2024-03-25T22:29:10.0687495Z",
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
                            "world-class"
                        ],
                        "defaultPasswordSettings": {
                            "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
                            "password": "***************"
                        },
                        "roleGroup@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('8c33d025-5e64-4550-2aa3-08dc4ac66fca')/provisioningFlows('dfeec276-d507-4008-d393-08dc4ac68cf2')/microsoft.graph.industryData.userProvisioningFlow/creationOptions/configurations/roleGroup/$entity",
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
                            "Strategist"
                        ],
                        "defaultPasswordSettings": {
                            "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",
                            "password": "***************"
                        },
                        "roleGroup@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('8c33d025-5e64-4550-2aa3-08dc4ac66fca')/provisioningFlows('dfeec276-d507-4008-d393-08dc4ac68cf2')/microsoft.graph.industryData.userProvisioningFlow/creationOptions/configurations/roleGroup/$entity",
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
    ]
}
```
