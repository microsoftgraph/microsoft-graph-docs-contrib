---
title: "applicationRiskFactorGeneralInfo resource type"
description: "Provides general business, operational, and compliance-related information used to assess the overall trustworthiness of an application."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationRiskFactorGeneralInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents general information about an [application](../resources/applicationtemplate.md) that contributes to its overall risk profile, including its business background, operational resilience, and data handling practices.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|consumerPopularity|Int32|Indicates the relative popularity or adoption of the application based on the user or tenant usage metrics.|
|domainRegistrationDate|Date|Specifies the date when the application's primary domain was registered, used to assess domain maturity and legitimacy.|
|founded|Int32|Year the company or organization behind the application was founded.|
|hasDisasterRecoveryPlan|Boolean|Indicates whether the application provider maintains a disaster recovery or business continuity plan.|
|hold|holdType|Specifies whether the application is publicly available, privately distributed, or in restricted status. The possible values are: `none`, `private`, `public`, `unknownFutureValue`.|
|hostingCompanyName|String|Specifies the name of the company or provider that hosts the application's infrastructure.|
|location|[applicationLocation](../resources/applicationlocation.md)|Provides the geographical and operational location information for the application, including data center and headquarters regions.|
|privacyPolicy|String|Specifies the URL of the application's privacy policy.|
|processedDataTypes|applicationDataType|Specifies the types of data the application processes. The possible values are: `none`, `codingFiles`, `creditCards`, `databaseFiles`, `documents`, `mediaFiles`, `unknownFutureValue`.|
|termsOfService|String|Specifies the URL of the application's terms of service.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskFactorGeneralInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationRiskFactorGeneralInfo",
  "hasDisasterRecoveryPlan": "Boolean",
  "founded": "Integer",
  "domainRegistrationDate": "Date",
  "hold": "String",
  "consumerPopularity": "Integer",
  "location": {
    "@odata.type": "microsoft.graph.applicationLocation"
  },
  "hostingCompanyName": "String",
  "termsOfService": "String",
  "privacyPolicy": "String",
  "processedDataTypes": "String"
}
```

