---
title: "applicationTemplate resource type"
description: "Represents an application in the Microsoft Entra application gallery"
ms.localizationpriority: medium
author: "HildaK-pm"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 02/19/2026
---

# applicationTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application in the [Microsoft Entra application gallery](/azure/active-directory/saas-apps/tutorial-list).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List](../api/applicationtemplate-list.md)|[applicationTemplate](applicationtemplate.md)|Retrieve a list of applicationTemplate objects.|
| [Get](../api/applicationtemplate-get.md) | [applicationTemplate](applicationtemplate.md) | Read properties and relationships of applicationTemplate object. |
|[Instantiate](../api/applicationtemplate-instantiate.md)|[applicationServicePrincipal](applicationserviceprincipal.md)| Add an instance of an application from the Microsoft Entra application gallery into your directory. The application template with ID `8adf8e6e-67b2-4cf2-a259-e3dc5476c621` can be used to add a non-gallery app that you can configure different single sign-on (SSO) modes like SAML SSO and password-based SSO.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|categories|String collection|The list of categories for the application. Supported values can be: `Collaboration`, `Business Management`, `Consumer`, `Content management`, `CRM`, `Data services`, `Developer services`, `E-commerce`, `Education`, `ERP`, `Finance`, `Health`, `Human resources`, `IT infrastructure`, `Mail`, `Management`, `Marketing`, `Media`, `Productivity`, `Project management`, `Telecommunications`, `Tools`, `Travel`, and `Web design & hosting`. <br/><br/> Supports `$filter` (`contains`).|
|configurationUris|[configurationUri](../resources/configurationuri.md) collection|The URIs required for the single sign-on configuration of a preintegrated application.|
|deprecationDate|Date|Deprecation date for this application. If specified, the application will be removed from the Microsoft Entra application gallery on this date.|
|description|String|A description of the application.|
|displayName|String|The name of the application. Supports `$filter` (`contains`).|
|endpoints|String collection|A collection of string URLs representing various domains that are used by this application.|
|homePageUrl|String|The home page URL of the application.|
|id|String|Unique identifier for the application. Read-only.|
|isEntraIntegrated|Boolean|Indicates whether the application is integrated with Entra ID (for example, through single sign-on or user provisioning).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the data for the application was last updated, represented using ISO 8601 format and always in UTC time.|
|logoUrl|String|The URL to get the logo for this application.|
|publisher|String|The name of the publisher for this application.|
|riskFactors|[applicationRiskFactors](applicationriskfactors.md)|General business and operational information about the application provider. Returned only when `$select` is used.|
|riskScore|[applicationRiskScore](../resources/applicationriskscore.md)|Represents the Microsoft-generated numerical risk score assessment for the application. Supported `$orderby` on **total** (for example, `$orderBy=riskScore/total desc`). Returned only when `$select` is used.|
|supportedProvisioningTypes|String collection|The list of provisioning modes supported by this application. The only valid value is `sync`.|
|supportedSingleSignOnModes|String collection|The list of single sign-on modes supported by this application. The supported values are `oidc`, `password`, `saml`, and `notSupported`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationTemplate",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.applicationTemplate",
  "categories": ["String"],
  "configurationUris": [{"@odata.type": "microsoft.graph.configurationUri"}],
  "deprecationDate": "String (Date)",
  "description": "String",  
  "displayName": "String",
  "endpoints": ["String"],
  "homePageUrl": "String",
  "id": "String (identifier)",
  "isEntraIntegrated": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "logoUrl": "String",
  "publisher": "String",
  "riskFactors": {"@odata.type": "microsoft.graph.applicationRiskFactors"},
  "riskScore": {"@odata.type": "microsoft.graph.applicationRiskScore"},
  "supportedProvisioningTypes": ["String"],
  "supportedSingleSignOnModes": ["String"]
}
```

## Related content

[Quickstart: Add an enterprise application from the Microsoft Entra gallery](/entra/identity/enterprise-apps/add-application-portal)

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
