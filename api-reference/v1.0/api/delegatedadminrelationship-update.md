---
title: "Update delegatedAdminRelationship"
description: "Update the properties of a delegatedAdminRelationship object."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: apiPageType
---

# Update delegatedAdminRelationship
Namespace: microsoft.graph

Update the properties of a [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object. 

The following restrictions apply:
- You can update this relationship when its **status** property is `created`.
- You can update the **autoExtendDuration** property when **status** is either `created` or `active`.
- You can only remove the Microsoft Entra Global Administrator role when the **status** property is `active`, which indicates a long-running operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "delegatedadminrelationship_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/delegatedadminrelationship-update-permissions.md)]

[!INCLUDE [rbac-gdap-apis-customer-only](../includes/rbac-for-apis/rbac-gdap-apis-customer-only.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|If-Match|If-match: {etag}. Last known ETag value for the **delegatedAdminRelationship** to be updated. Retrieve the ETag value from a LIST or GET operation. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|accessDetails|[microsoft.graph.delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The identifiers of the administrative roles that the partner requests or has access to in the customer tenant.|
|autoExtendDuration|Duration| The duration by which the validity of the relationship is automatically extended, denoted in ISO 8601 format. Supported values are: `P0D`, `PT0S`, `P180D`. The default value is `PT0S`. `PT0S` indicates that the relationship expires when the **endDateTime** is reached and it isn't automatically extended.|
|customer|[microsoft.graph.delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The display name and unique identifier of the customer of the relationship.|
|displayName|String|The display name of the relationship used for ease of identification. Must be unique across *all* delegated admin relationships of the partner. Maximum length is 50 characters.|
|duration|Duration|The duration of the relationship in ISO 8601 format. Must be a value between `P1D` and `P2Y` inclusive.|


## Response

If successful, this method returns either a `200 OK` or a `202 Accepted` response code. The response body contains a 
 [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object when the response is `200 OK`.

### Response headers
|Name|Description|
|:---|:---|
|Content-Type|application/json.|
|Location|The location of the long-running operation.|
|Retry-After|The time after which a subsequent API call can be made to the Location URL to check the status of the long-running operation.|

This method returns a `202 Accepted` response if you remove the Microsoft Entra Global Administrator role from the relationship while its **status** property is `active`. The response includes a URL in the Location header that you can use to monitor the operation's progress.

If you don't supply the template ID that corresponds to the Microsoft Entra Global Administrator role in the `unifiedRoles` array in the `accessDetails` property of the request body, then the API returns `200 OK` and the original [delegatedAdminRelationship](../resources/delegatedAdminRelationship.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_delegatedadminrelationship",
  "sampleKeys": ["5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836"]
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/tenantRelationships/delegatedAdminRelationships/5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836
If-Match: W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="
Content-Type: application/json

{
  "displayName": "Updated Contoso admin relationship",
  "duration": "P31D",
  "customer": {
    "tenantId": "52eaad04-13a2-4a2f-9ce8-93a294fadf36"
  },
  "accessDetails": {
    "unifiedRoles": [
      {
        "roleDefinitionId": "44367163-eba1-44c3-98af-f5787879f96a"
      },
      {
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
      },
      {
        "roleDefinitionId": "69091246-20e8-4a56-aa4d-066075b2a7a8"
      },
      {
        "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
      }
    ]
  },
  "autoExtendDuration": "P180D"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-delegatedadminrelationship-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-delegatedadminrelationship-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-delegatedadminrelationship-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-delegatedadminrelationship-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-delegatedadminrelationship-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-delegatedadminrelationship-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-delegatedadminrelationship-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-delegatedadminrelationship-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedAdminRelationship"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
  "@odata.context": "https://graph.microsoft.com/v1.0/tenantRelationships/$metadata#delegatedAdminRelationships/$entity",
  "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
  "id": "5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836",
  "displayName": "Updated Contoso admin relationship",
  "duration": "P31D",
  "status": "created",
  "createdDateTime": "2022-02-10T11:24:42.3148266Z",
  "lastModifiedDateTime": "2022-02-10T11:26:44.9941884Z",
  "customer": {
    "tenantId": "52eaad04-13a2-4a2f-9ce8-93a294fadf36"
  },
  "accessDetails": {
    "unifiedRoles": [
      {
        "roleDefinitionId": "44367163-eba1-44c3-98af-f5787879f96a"
      },
      {
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
      },
      {
        "roleDefinitionId": "69091246-20e8-4a56-aa4d-066075b2a7a8"
      },
      {
        "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
      }
    ]
  },
  "autoExtendDuration": "P180D"
}
```

