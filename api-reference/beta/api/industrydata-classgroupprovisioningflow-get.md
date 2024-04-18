---
title: "Get classGroupProvisioningFlow"
description: "Read the properties and relationships of a classGroupProvisioningFlow object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Get classGroupProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-classgroupprovisioningflow-get-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-classgroupprovisioningflow-get-permissions.md)]

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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_classgroupprovisioningflow"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/417a82c8-7caa-4f82-3ac6-08dc4ac6fb7f
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-classgroupprovisioningflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-classgroupprovisioningflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-classgroupprovisioningflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-classgroupprovisioningflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-classgroupprovisioningflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-classgroupprovisioningflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-classgroupprovisioningflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.classGroupProvisioningFlow"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/outboundProvisioningFlowSets('9ab41255-5364-4c53-e15c-08dc4ab6ee03')/provisioningFlows/$entity",
    "@odata.type": "#microsoft.graph.industryData.classGroupProvisioningFlow",
    "id": "417a82c8-7caa-4f82-3ac6-08dc4ac6fb7f",
    "createdDateTime": "2024-03-22T23:34:18.5035988Z",
    "lastModifiedDateTime": "2024-03-22T23:34:18.5035988Z",
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
}
```
