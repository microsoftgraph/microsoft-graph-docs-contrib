---
title: "Update externalOriginResourceConnector"
description: "Update the properties of an externalOriginResourceConnector object."
author: "vikama-microsoft"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update externalOriginResourceConnector

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externaloriginresourceconnector_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/externaloriginresourceconnector-update-permissions.md)]

[!INCLUDE [rbac-entitlement-identity-governance-admin-apis-write](../includes/rbac-for-apis/rbac-entitlement-identity-governance-admin-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/entitlementManagement/externalOriginResourceConnectors/{externalOriginResourceConnectorId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the connector. Optional.|
|description|String|A description of the connector. Optional.|
|connectorType|connectorType|The type of connector. Connector types can be either SAP Cloud Identity Access Governance(sapIag) or SAP Augmented Access Control (sapAc). The possible values are: `sapIag`, `sapAc`, `unknownFutureValue`. Optional.|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|The connection information used to communicate with the external resource system. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_externaloriginresourceconnector"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/externalOriginResourceConnectors/e363ebb8-6faa-4980-ac5b-eefc196e1cd4
Content-Type: application/json

{
  "id": "d743fe46-80f8-41b1-a2ee-7796e024edb9",
  "connectorType": "sapIag",
  "displayName": "SAP IAG 5.0",
  "description": "SAP IAG 5.0.0.0.0",
  "connectionInfo": {
    "@odata.type": "Microsoft.IGAELM.EC.FrontEnd.ExternalModel.externalTokenBasedSapIagConnectionInfo",
    "url": "https://IAGINTGORG-iag-intg-space-java-rest-arqapi.cfps.sap.hana.ondemand.com",
    "keyVaultName": "sap-key-vault",
    "subscriptionId": "caa5v042-9c76-44de-9e84-f3e3071a7b4e",
    "resourceGroup": "test-rg",
    "accessTokenUrl": "https://entra-intg-l4nds6yn.authentication.sap.hana.ondemand.com/oauth/token",
    "clientId": "sb-8d896b-72b5-46ce-9273-471874a09137!b133623|iagapi-iag-intg-space!b11378",
    "secretName": "clienecret"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-externaloriginresourceconnector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-externaloriginresourceconnector-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-externaloriginresourceconnector-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-externaloriginresourceconnector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-externaloriginresourceconnector-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-externaloriginresourceconnector-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-externaloriginresourceconnector-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalOriginResourceConnector"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/externalOriginResourceConnector/$entity",
  "@odata.type": "#microsoft.graph.externalOriginResourceConnector",
  "id": "e363ebb8-6faa-4980-ac5b-eefc196e1cd",
  "displayName": "SAP Identity Access Governance Connector Test",
  "description": "SAP Identity Access Governance Connector test",
  "connectorType": "sapIag",
  "connectionInfo": {
    "@odata.type": "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
              "url": "dev.test",
              "accessTokenUrl": "9e90019f-6256-41fa-a225-5ef9cc1d9bf8",
              "clientId": "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
              "keyVaultName": "Keyvault",
              "secretName": "Test",
              "subscriptionId": "5ee98b73-d9df-43a7-8a92-36855054bdee",
              "resourceGroup": "SAPIAG Group"
  },
  "createdBy": "kayat@contoso.com",
  "createdDateTime": "2025-10-29T09:50:23Z",
  "modifiedBy": "kayat@contoso.com",
  "modifiedDateTime": "2025-12-04T01:10:28Z"
}
```
