---
title: "Get crossTenantAccessPolicyConfigurationPartner"
description: "Read the properties and relationships of a partner-specific configuration."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get crossTenantAccessPolicyConfigurationPartner

Namespace: microsoft.graph

Read the properties and relationships of a [partner-specific](../resources/crosstenantaccesspolicyconfigurationpartner.md) configuration.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not applicable|
|Application|Policy.Read.All, Policy.ReadWrite.CrossTenantAccess|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /policies/crossTenantAccessPolicy/partners/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_crosstenantaccesspolicyconfigurationpartner"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/partners/9c5d131d-b1c3-4fc4-9e3f-c6557947d551
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationPartner"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "tenantId": "9c5d131d-b1c3-4fc4-9e3f-c6557947d551",
  "inboundTrust": null,
  "automaticUserConsentSettings":
  {
    "inboundAllowed": null,
    "outboundAllowed": null
  },
  "b2bCollaborationInbound": null,
  "b2bCollaborationOutbound": null,
  "b2bDirectConnectOutbound": null,
  "b2bDirectConnectInbound":
  {
    "usersAndGroups": 
    {
      "accessType": "allowed",
      "targets": [
        {
          "target": "AllUsers",
          "targetType": "user"
        }
      ]
    },
    "applications":
    {
      "accessType": "allowed",
      "targets": [
        {
          "target": "Office365",
          "targetType": "application"
        }
      ]
    }
  }
}
```
