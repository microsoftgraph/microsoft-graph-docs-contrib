---
title: "azureAdTokenAuthentication resource type"
description: "Defines the Microsoft Entra application used to authenticate with a custom extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# azureAdTokenAuthentication resource type

Namespace: microsoft.graph

Defines the Microsoft Entra application used to authenticate a logic app with a [customTaskExtension](../resources/identitygovernance-customtaskextension.md), [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md), or [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md). This object is configured in the **authenticationConfiguration** property of those resources. Only the app ID of the application is required. Derived from [customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The **appID** of the Microsoft Entra application to use to authenticate an app with a custom extension.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureAdTokenAuthentication",
  "baseType": "microsoft.graph.customExtensionAuthenticationConfiguration"
}
-->

``` json
{ 
  "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", 
  "resourceId": "String" 
 } 
```
