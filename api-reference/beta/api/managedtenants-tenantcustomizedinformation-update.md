---
title: "Update tenantCustomizedInformation"
description: "Update the properties of a tenantCustomizedInformation object."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Update tenantCustomizedInformation
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_tenantcustomizedinformation_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-tenantcustomizedinformation-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/managedTenants/tenantsCustomizedInformation/{tenantCustomizedInformationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) object.

The following table shows the properties that are required when you update the [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The Microsoft Entra tenant identifier for the managed tenant.|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md).|
|contacts|[microsoft.graph.managedTenants.tenantContactInformation](../resources/managedtenants-tenantcontactinformation.md) collection|The collection of contacts associated with the managed tenant.|
|website|String|The website for the managed tenant.|

## Response

If successful, this method returns a `200 OK` response code and an updated [tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_tenantcustomizedinformation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantsCustomizedInformation/{tenantCustomizedInformationId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.tenantCustomizedInformation",
  "tenantId": "String",
  "contacts": [
    {
      "@odata.type": "microsoft.graph.managedTenants.tenantContactInformation",
      "name": "String",
      "title": "String",
      "email": "String",
      "phone": "String",
      "notes": "String"
    }
  ],
  "website": "String"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-tenantcustomizedinformation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-tenantcustomizedinformation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-tenantcustomizedinformation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-tenantcustomizedinformation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-tenantcustomizedinformation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-tenantcustomizedinformation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-tenantcustomizedinformation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-tenantcustomizedinformation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.tenantCustomizedInformation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.tenantCustomizedInformation",
  "id": "34298981-4fc8-4974-9486-c8909ed1521b",
  "tenantId": "34298981-4fc8-4974-9486-c8909ed1521b",
  "website": "https://www.fourthcoffee.com",
  "contacts": [
    {
      "name": "Sally",
      "email": "sally@fourthcoffee.com",
      "phone": "5558009731"
    },
    {
      "name": "Hector",
      "email": "hector@fourthcoffee.com",
      "phone": "5558009732"
    }
  ]
}
```
