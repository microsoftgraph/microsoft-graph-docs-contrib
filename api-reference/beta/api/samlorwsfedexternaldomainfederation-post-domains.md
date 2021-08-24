---
title: "Create externalDomainName"
description: "Create a new externalDomainName object."
author: "namkedia"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create externalDomainName
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new externalDomainName object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Domain.Read.All, Domain.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Domain.Read.All, Domain.ReadWrite.All|

The work or school account needs to belong to one of the following [Azure Active Directory (Azure AD) roles](/azure/active-directory/roles/permissions-reference):

* Global Administrator
* External Identity Provider Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /samlOrWsFedExternalDomainFederation/domains
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalDomainName](../resources/externaldomainname.md) object.

The following table shows the properties that are required when you create the [externalDomainName](../resources/externaldomainname.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `201 Created` response code and an [externalDomainName](../resources/externaldomainname.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_externaldomainname_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/samlOrWsFedExternalDomainFederation/domains
Content-Type: application/json
Content-length: 60

{
  "@odata.type": "#microsoft.graph.externalDomainName"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalDomainName"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalDomainName",
  "id": "7869a60f-a60f-7869-0fa6-69780fa66978"
}
```

