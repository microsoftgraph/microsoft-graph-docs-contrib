---
title: "Update securityGroupProvisioningFlow"
description: "Update the properties of a securityGroupProvisioningFlow object."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/22/2024
---

# Update securityGroupProvisioningFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [securityGroupProvisioningFlow](../resources/industrydata-securitygroupprovisioningflow.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-securitygroupprovisioningflow-update-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/industrydata-securitygroupprovisioningflow-update-permissions.md)]

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

| Property        | Type                                                                                                                   | Description                                                                       |
| :-------------- | :--------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------- |
| creationOptions | [microsoft.graph.industryData.securityGroupCreationOptions](../resources/industrydata-securitygroupcreationoptions.md) | The different attribute choices for the class groups to be provisioned. Required. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_securitygroupprovisioningflow"
}
-->

```http
PATCH https://graph.microsoft.com/beta/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/4598f62a-7bd9-40a1-d38a-08dc4ac68cf2
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",
  "creationOptions":
  {
    "createBasedOnRoleGroup": true,
    "createBasedOnOrgPlusRoleGroup": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-securitygroupprovisioningflow-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-securitygroupprovisioningflow-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-securitygroupprovisioningflow-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-securitygroupprovisioningflow-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-securitygroupprovisioningflow-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-securitygroupprovisioningflow-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-securitygroupprovisioningflow-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-securitygroupprovisioningflow-python-snippets.md)]
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
