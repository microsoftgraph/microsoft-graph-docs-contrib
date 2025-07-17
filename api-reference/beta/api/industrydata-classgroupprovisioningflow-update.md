---
title: "Update classGroupProvisioningFlow"
description: "Update the properties of a classGroupProvisioningFlow object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/22/2024
---

# Update classGroupProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [classGroupProvisioningFlow](../resources/industrydata-classgroupprovisioningflow.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-classgroupprovisioningflow-update-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-classgroupprovisioningflow-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /external/industryData/OutboundProvisioningFlowSets/{id}/provisioningFlows/{id}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property      | Type                                                                                                         | Description                                                                       |
| :------------ | :----------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------- |
| configuration | [microsoft.graph.industryData.classGroupConfiguration](../resources/industrydata-classgroupconfiguration.md) | The different attribute choices for the class groups to be provisioned. Required. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_classgroupprovisioningflow"
}
-->

```http
PATCH https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/417a82c8-7caa-4f82-3ac6-08dc4ac6fb7f
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.industryData.classGroupProvisioningFlow",
    "configuration": {
        "@odata.type": "#microsoft.graph.industryData.classGroupConfiguration",
        "additionalAttributes": [
            "courseTitle",
            "courseCode"
        ],
        "additionalOptions": {
            "@odata.type": "#microsoft.graph.industryData.additionalClassGroupOptions",
            "createTeam": false,
            "writeDisplayNameOnCreateOnly": false
        },
        "enrollmentMappings": {
            "@odata.type": "#microsoft.graph.industryData.enrollmentMappings",
            "memberEnrollmentMappings": [
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "substitute"
                }
            ],
            "ownerEnrollmentMappings": [
                {
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
                    "code": "teacher"
                }
            ]
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-classgroupprovisioningflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-classgroupprovisioningflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-classgroupprovisioningflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-classgroupprovisioningflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-classgroupprovisioningflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-classgroupprovisioningflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-classgroupprovisioningflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-classgroupprovisioningflow-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
