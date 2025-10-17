---
title: "applicationTemplate resource type"
description: "Represents an application in the Microsoft Entra application gallery"
ms.localizationpriority: medium
author: "HildaK-pm"
ms.service: microsoft-graph
doc_type: "resourcePageType"
ms.date: 07/16/2024
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
|[Instantiate](../api/applicationtemplate-instantiate.md)|[applicationServicePrincipal](applicationserviceprincipal.md)| Add an instance of an application from the Microsoft Entra application gallery into your directory. The application template with ID `8adf8e6e-67b2-4cf2-a259-e3dc5476c621` can be used to add a non-gallery app that you can configure different single-sign on (SSO) modes like SAML SSO and password-based SSO.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|categories|String collection|The list of categories for the application. Supported values can be: `Collaboration`, `Business Management`, `Consumer`, `Content management`, `CRM`, `Data services`, `Developer services`, `E-commerce`, `Education`, `ERP`, `Finance`, `Health`, `Human resources`, `IT infrastructure`, `Mail`, `Management`, `Marketing`, `Media`, `Productivity`, `Project management`, `Telecommunications`, `Tools`, `Travel`, and `Web design & hosting`.|
|configurationUris|[configurationUri](../resources/configurationuri.md) collection|The URIs required for the single sign-on configuration of a preintegrated application.|
|description|String|A description of the application.|
|displayName|String|The name of the application.|
|endpoints|String collection|A collection of string URLs representing various API endpoints available on learn.microsoft.com.|
|homePageUrl|String|The home page URL of the application.|
|id|String| Unique identifier for the application. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the data or resource was last updated, in DateTimeOffset format.|
|logoUrl|String|The URL to get the logo for this application.|
|publisher|String|The name of the publisher for this application.|
|riskFactors|[applicationRiskFactors](applicationriskfactors.md)|General business and operational information about the application provider|
|riskScore|[applicationRiskScore](../resources/applicationriskscore.md)|Represents the numerical risk score assessment for an application|
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
  "id": "String (identifier)",
  "displayName": "String",
  "homePageUrl": "String",
  "supportedSingleSignOnModes": [
    "String"
  ],
  "supportedProvisioningTypes": [
    "String"
  ],
  "logoUrl": "String",
  "categories": [
    "String"
  ],
  "publisher": "String",
  "description": "String",
  "informationalUrls": {
    "@odata.type": "microsoft.graph.informationalUrls"
  },
  "supportedClaimConfiguration": {
    "@odata.type": "microsoft.graph.supportedClaimConfiguration"
  },
  "configurationUris": [
    {
      "@odata.type": "microsoft.graph.configurationUri"
    }
  ],
  "riskScore": {
    "@odata.type": "microsoft.graph.applicationRiskScore"
  },
  "riskFactors": {
    "@odata.type": "microsoft.graph.applicationRiskFactors"
  },
  "endpoints": [
    "String"
  ],
  "lastModifiedDateTime": "String (timestamp)"
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
