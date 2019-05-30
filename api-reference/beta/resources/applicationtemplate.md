---
title: "applicationTemplate resource type"
description: "Represents an application in the Azure AD Gallery"
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: ""
---

# applicationTemplate resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application in the [Azure AD Gallery](https://docs.microsoft.com/en-us/azure/active-directory/saas-apps/tutorial-list).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get applicationTemplate](../api/applicationtemplate-get.md) | [applicationTemplate](applicationtemplate.md) | Read properties and relationships of applicationTemplate object. |
| [Update](../api/applicationtemplate-update.md) | [applicationTemplate](applicationtemplate.md) | Update applicationTemplate object. |
| [Delete](../api/applicationtemplate-delete.md) | None | Delete applicationTemplate object. |
|[Instantiate](../api/applicationtemplate-instantiate.md)|[applicationServicePrincipal](applicationserviceprincipal.md)|Use this API to create a new applicationTemplate|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|categories|String collection|The list of categories for the application.|
|description|String|A description of the application.|
|displayName|String|The name of the application.|
|homePageUrl|String|The home page URL of the application.|
|id|Guid| Unique identifier for the application. Read-only.|
|logoUrl|String|The URL to get the logo for this application|
|publisher|String|The name of the publisher for this application|
|supportedProvisioningTypes|String collection|The list of provisioning modes supported by this application|
|supportedSingleSignOnModes|String collection|The list of single sign-on modes supported by this application|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationTemplate",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
	"id" : "id",
	"displayName" : "LinkedIn Lookup",
	"homePageUrl" : "www.linkedin.com",
	"supportedSingleSignOnModes" : ["SAML", "Password"],
	"logoUrl" : "https://images.microsoft.com",
	"categories" : ["collaboration", "social"],
	"publisher" : "LinkedIn",
	"description" : "LinkedIn Lookup is the easiest way to find coworkers and teams at your company. Lookup is a new people search tool that combines employees\u00e2\u20ac\u2122 LinkedIn profile information and Active Directory information, allowing you to quickly find and contact your coworkers, on desktop or mobile. Requires an existing Lookup company subscription."
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->