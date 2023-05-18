---
title: "Create externalDomainName"
description: "Create a new externalDomainName object."
author: "namkedia"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create externalDomainName
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add multiple domains to your SAML or WS-Fed based configuration by creating a new [externalDomainName](../resources/externaldomainname.md) object and add it to an existing [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)| IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application| IdentityProvider.ReadWrite.All|

The work or school account needs to belong to one of the following [Azure Active Directory (Azure AD) roles](/azure/active-directory/roles/permissions-reference):

* Global Administrator
* External Identity Provider Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /directory/federationConfigurations/{samlOrWsFedExternalDomainFederation ID}/microsoft.graph.samlOrWsFedExternalDomainFederation/domains
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
|id|String|Domain name of the external organization you want to add to your [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md). Inherited from [entity](../resources/entity.md).|

## Response

If successful, this method returns a `201 Created` response code and an [externalDomainName](../resources/externaldomainname.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_externaldomainname_from_e1"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/federationConfigurations/d5a56845-6845-d5a5-4568-a5d54568a5d5/microsoft.graph.samlOrWsFedExternalDomainFederation/domains
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.externalDomainName",
    "id": "contososuites.com"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-externaldomainname-from-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-externaldomainname-from-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
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
  "id": "contososuites.com"
}
```
