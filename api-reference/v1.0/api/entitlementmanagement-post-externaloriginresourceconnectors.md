---
title: "Create externalOriginResourceConnector"
description: "Create a new externalOriginResourceConnector object."
author: "vikama-microsoft"
ms.date: 07/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create externalOriginResourceConnector

Namespace: microsoft.graph

Creates a new [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_post_externaloriginresourceconnectors" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-post-externaloriginresourceconnectors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/externalOriginResourceConnectors
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object.

You can specify the following properties when creating an **externalOriginResourceConnector**.

|Property|Type|Description|
|:---|:---|:---|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|The connection information for the external origin resource connector. Required.|
|connectorType|connectorType|The type of connector. The possible values are: `sapIag`, `unknownFutureValue`. Required.|
|description|String|The description of the external origin resource connector. Required.|
|displayName|String|The display name of the external origin resource connector. Required.|



## Response

If successful, this method returns a `201 Created` response code and an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_externaloriginresourceconnector"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/externalOriginResourceConnectors
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalOriginResourceConnector",
  "displayName": "SAP IAG Connector",
  "description": "This connector helps integrate Microsoft Entra with SAP IAG",
  "connectorType": "sapIag",
  "connectionInfo": {
    "@odata.type": "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
    "url": "https://contoso.example.com",
    "accessTokenUrl": "https://contoso.example.com/oauth/token",
    "clientId": "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
    "keyVaultName": "Keyvault",
    "secretName": "clientSecret",
    "subscriptionId": "5ee98b73-d9df-43a7-8a92-36855054bdee",
    "resourceGroup": "SAP IAG Group"
  }
}
```

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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalOriginResourceConnector",
  "id": "ea32a820-9c92-428d-ba21-a33b0c00cfb2",
  "displayName": "SAP IAG Connector",
  "description": "This connector helps integrate Microsoft Entra with SAP IAG",
  "connectorType": "sapIag",
  "connectionInfo": {
    "@odata.type": "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
    "url": "https://contoso.example.com",
    "accessTokenUrl": "https://contoso.example.com/oauth/token",
    "clientId": "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
    "keyVaultName": "Keyvault",
    "secretName": "clientSecret",
    "subscriptionId": "5ee98b73-d9df-43a7-8a92-36855054bdee",
    "resourceGroup": "SAP IAG Group"
  },
  "createdBy": "admin@contoso.com",
  "createdDateTime": "2026-02-23T10:15:30Z",
  "modifiedBy": null,
  "modifiedDateTime": null
}
```
