---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-deviceconfigv2-devicemanagement-get.md)|[deviceManagement](../resources/intune-deviceconfigv2-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-deviceconfigv2-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-deviceconfigv2-devicemanagement-update.md)|[deviceManagement](../resources/intune-deviceconfigv2-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-deviceconfigv2-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|configurationPolicies|[deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) collection|List of all Configuration policies|
|compliancePolicies|[deviceManagementCompliancePolicy](../resources/intune-deviceconfigv2-devicemanagementcompliancepolicy.md) collection|List of all compliance policies|
|configurationSettings|[deviceManagementConfigurationSettingDefinition](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingdefinition.md) collection|List of all ConfigurationSettings|
|complianceSettings|[deviceManagementConfigurationSettingDefinition](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingdefinition.md) collection|List of all ComplianceSettings|
|reusableSettings|[deviceManagementConfigurationSettingDefinition](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingdefinition.md) collection|List of all reusable settings|
|configurationCategories|[deviceManagementConfigurationCategory](../resources/intune-deviceconfigv2-devicemanagementconfigurationcategory.md) collection|List of all Configuration Categories|
|configurationPolicyTemplates|[deviceManagementConfigurationPolicyTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplate.md) collection|List of all templates|
|templateSettings|[deviceManagementConfigurationSettingTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingtemplate.md) collection|List of all TemplateSettings|
|complianceCategories|[deviceManagementConfigurationCategory](../resources/intune-deviceconfigv2-devicemanagementconfigurationcategory.md) collection|List of all compliance categories|
|reusablePolicySettings|[deviceManagementReusablePolicySetting](../resources/intune-deviceconfigv2-devicemanagementreusablepolicysetting.md) collection|List of all reusable settings that can be referred in a policy|
|templateInsights|[deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md) collection|List of setting insights in a template|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```
