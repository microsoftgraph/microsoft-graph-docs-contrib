---
title: "List retentionLabels"
description: "Get a list of the retentionLabel objects and their properties."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 06/21/2024
---

# List retentionLabels
Namespace: microsoft.graph.security

Get a list of the [retentionLabel](../resources/security-retentionlabel.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_list_retentionlabel" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-list-retentionlabel-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/labels/retentionLabels
```

## Optional query parameters
This method supports the `expand` OData query parameter to help customize the response.  

For example:
- To retrieve the **retentionEventType** property, use `$expand=retentionEventType`. 
- To retrieve the **descriptors** property, use `$expand=descriptors`. 

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) objects in the response body.

## Examples

### Request
Here's an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_retentionlabel"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/labels/retentionLabels
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-retentionlabel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-retentionlabel-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-retentionlabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-retentionlabel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-retentionlabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-retentionlabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-retentionlabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-retentionlabel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.retentionLabel)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.retentionLabel",
      "id": "64a99fb4-07be-0481-8746-44c15c0eef1f",
      "displayName": "Retention Schedule 10004",
      "behaviorDuringRetentionPeriod": "retain",
      "actionAfterRetentionPeriod": "relabel",
      "retentionTrigger": "dateCreated",
      "retentionDuration": {
        "@odata.type": "microsoft.graph.security.retentionDurationInDays",
        "days": "730"
      },
      "isInUse": true,
      "descriptionForAdmins": "creation based retention label for schedule 10004",
      "descriptionForUsers": "retains for 2 years then relabeled",
      "createdBy": {
        "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Admin"
        }
      },
      "createdDateTime": "2017-11-27T02:10:12Z",
      "lastModifiedBy": {
        "user": {
          "id": "9563a605-e827-4324-a5a9-09efddff1e90",
          "displayName": "Records Manager"
        }
      },
      "lastModifiedDateTime": "2020-08-28T22:13:09Z",
      "labelToBeApplied": "Retention schedule 10005",
      "defaultRecordBehavior": "startLocked"
    }
  ]
}
```


