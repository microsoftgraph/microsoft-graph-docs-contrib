---
title: "deviceManagementTemplateInsightsDefinition resource type"
description: "template insights definition"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementTemplateInsightsDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

template insights definition

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementTemplateInsightsDefinitions](../api/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition-list.md)|[deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md) collection|List properties and relationships of the [deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md) objects.|
|[Get deviceManagementTemplateInsightsDefinition](../api/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition-get.md)|[deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md)|Read properties and relationships of the [deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md) object.|
|[Create deviceManagementTemplateInsightsDefinition](../api/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition-create.md)|[deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md)|Create a new [deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md) object.|
|[Delete deviceManagementTemplateInsightsDefinition](../api/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition-delete.md)|None|Deletes a [deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md).|
|[Update deviceManagementTemplateInsightsDefinition](../api/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition-update.md)|[deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md)|Update the properties of a [deviceManagementTemplateInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementtemplateinsightsdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of Templateinsights document.|
|settingInsights|[deviceManagementSettingInsightsDefinition](../resources/intune-deviceconfigv2-devicemanagementsettinginsightsdefinition.md) collection|Setting insights in a template|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementTemplateInsightsDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementTemplateInsightsDefinition",
  "id": "String (identifier)",
  "settingInsights": [
    {
      "@odata.type": "microsoft.graph.deviceManagementSettingInsightsDefinition",
      "settingDefinitionId": "String",
      "settingInsight": {
        "@odata.type": "microsoft.graph.deviceManagementConfigurationGroupSettingValue",
        "settingValueTemplateReference": {
          "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
          "settingValueTemplateId": "String",
          "useTemplateDefault": true
        },
        "children": [
          {
            "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
            "settingDefinitionId": "String",
            "settingInstanceTemplateReference": {
              "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
              "settingInstanceTemplateId": "String"
            },
            "auditRuleInformation": {
              "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
              "auditType": "String",
              "auditRuleMetadata": {
                "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                "metadataType": "String",
                "ruleId": "String",
                "ruleName": "String",
                "ruleDescription": "String",
                "ruleVersion": "String",
                "ruleSeverity": "String"
              }
            },
            "choiceSettingValue": {
              "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
              "settingValueTemplateReference": {
                "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                "settingValueTemplateId": "String",
                "useTemplateDefault": true
              },
              "value": "String",
              "children": [
                {
                  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                  "settingDefinitionId": "String",
                  "settingInstanceTemplateReference": {
                    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                    "settingInstanceTemplateId": "String"
                  },
                  "auditRuleInformation": {
                    "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                    "auditType": "String",
                    "auditRuleMetadata": {
                      "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                      "metadataType": "String",
                      "ruleId": "String",
                      "ruleName": "String",
                      "ruleDescription": "String",
                      "ruleVersion": "String",
                      "ruleSeverity": "String"
                    }
                  },
                  "choiceSettingValue": {
                    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                    "settingValueTemplateReference": {
                      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                      "settingValueTemplateId": "String",
                      "useTemplateDefault": true
                    },
                    "value": "String",
                    "children": [
                      {
                        "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                        "settingDefinitionId": "String",
                        "settingInstanceTemplateReference": {
                          "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                          "settingInstanceTemplateId": "String"
                        },
                        "auditRuleInformation": {
                          "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                          "auditType": "String",
                          "auditRuleMetadata": {
                            "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                            "metadataType": "String",
                            "ruleId": "String",
                            "ruleName": "String",
                            "ruleDescription": "String",
                            "ruleVersion": "String",
                            "ruleSeverity": "String"
                          }
                        },
                        "choiceSettingValue": {
                          "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                          "settingValueTemplateReference": {
                            "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                            "settingValueTemplateId": "String",
                            "useTemplateDefault": true
                          },
                          "value": "String",
                          "children": [
                            {
                              "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                              "settingDefinitionId": "String",
                              "settingInstanceTemplateReference": {
                                "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                "settingInstanceTemplateId": "String"
                              },
                              "auditRuleInformation": {
                                "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                "auditType": "String",
                                "auditRuleMetadata": {
                                  "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                  "metadataType": "String",
                                  "ruleId": "String",
                                  "ruleName": "String",
                                  "ruleDescription": "String",
                                  "ruleVersion": "String",
                                  "ruleSeverity": "String"
                                }
                              },
                              "choiceSettingValue": {
                                "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                "settingValueTemplateReference": {
                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                  "settingValueTemplateId": "String",
                                  "useTemplateDefault": true
                                },
                                "value": "String",
                                "children": [
                                  {
                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                    "settingDefinitionId": "String",
                                    "settingInstanceTemplateReference": {
                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                      "settingInstanceTemplateId": "String"
                                    },
                                    "auditRuleInformation": {
                                      "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                      "auditType": "String",
                                      "auditRuleMetadata": {
                                        "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                        "metadataType": "String",
                                        "ruleId": "String",
                                        "ruleName": "String",
                                        "ruleDescription": "String",
                                        "ruleVersion": "String",
                                        "ruleSeverity": "String"
                                      }
                                    },
                                    "choiceSettingValue": {
                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                      "settingValueTemplateReference": {
                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                        "settingValueTemplateId": "String",
                                        "useTemplateDefault": true
                                      },
                                      "value": "String",
                                      "children": [
                                        {
                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                          "settingDefinitionId": "String",
                                          "settingInstanceTemplateReference": {
                                            "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                            "settingInstanceTemplateId": "String"
                                          },
                                          "auditRuleInformation": {
                                            "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                            "auditType": "String",
                                            "auditRuleMetadata": {
                                              "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                              "metadataType": "String",
                                              "ruleId": "String",
                                              "ruleName": "String",
                                              "ruleDescription": "String",
                                              "ruleVersion": "String",
                                              "ruleSeverity": "String"
                                            }
                                          },
                                          "choiceSettingValue": {
                                            "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                            "settingValueTemplateReference": {
                                              "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                              "settingValueTemplateId": "String",
                                              "useTemplateDefault": true
                                            },
                                            "value": "String",
                                            "children": [
                                              {
                                                "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                "settingDefinitionId": "String",
                                                "settingInstanceTemplateReference": {
                                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                  "settingInstanceTemplateId": "String"
                                                },
                                                "auditRuleInformation": {
                                                  "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                  "auditType": "String",
                                                  "auditRuleMetadata": {
                                                    "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                    "metadataType": "String",
                                                    "ruleId": "String",
                                                    "ruleName": "String",
                                                    "ruleDescription": "String",
                                                    "ruleVersion": "String",
                                                    "ruleSeverity": "String"
                                                  }
                                                },
                                                "choiceSettingValue": {
                                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                  "settingValueTemplateReference": {
                                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                    "settingValueTemplateId": "String",
                                                    "useTemplateDefault": true
                                                  },
                                                  "value": "String",
                                                  "children": [
                                                    {
                                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                      "settingDefinitionId": "String",
                                                      "settingInstanceTemplateReference": {
                                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                        "settingInstanceTemplateId": "String"
                                                      },
                                                      "auditRuleInformation": {
                                                        "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                        "auditType": "String",
                                                        "auditRuleMetadata": {
                                                          "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                          "metadataType": "String",
                                                          "ruleId": "String",
                                                          "ruleName": "String",
                                                          "ruleDescription": "String",
                                                          "ruleVersion": "String",
                                                          "ruleSeverity": "String"
                                                        }
                                                      },
                                                      "choiceSettingValue": {
                                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                        "settingValueTemplateReference": {
                                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                          "settingValueTemplateId": "String",
                                                          "useTemplateDefault": true
                                                        },
                                                        "value": "String",
                                                        "children": [
                                                          {
                                                            "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                            "settingDefinitionId": "String",
                                                            "settingInstanceTemplateReference": {
                                                              "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                              "settingInstanceTemplateId": "String"
                                                            },
                                                            "auditRuleInformation": {
                                                              "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                              "auditType": "String",
                                                              "auditRuleMetadata": {
                                                                "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                                "metadataType": "String",
                                                                "ruleId": "String",
                                                                "ruleName": "String",
                                                                "ruleDescription": "String",
                                                                "ruleVersion": "String",
                                                                "ruleSeverity": "String"
                                                              }
                                                            },
                                                            "choiceSettingValue": {
                                                              "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                              "settingValueTemplateReference": {
                                                                "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                                "settingValueTemplateId": "String",
                                                                "useTemplateDefault": true
                                                              },
                                                              "value": "String",
                                                              "children": [
                                                                {
                                                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                                  "settingDefinitionId": "String",
                                                                  "settingInstanceTemplateReference": {
                                                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                                    "settingInstanceTemplateId": "String"
                                                                  },
                                                                  "auditRuleInformation": {
                                                                    "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                                    "auditType": "String",
                                                                    "auditRuleMetadata": {
                                                                      "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                                      "metadataType": "String",
                                                                      "ruleId": "String",
                                                                      "ruleName": "String",
                                                                      "ruleDescription": "String",
                                                                      "ruleVersion": "String",
                                                                      "ruleSeverity": "String"
                                                                    }
                                                                  },
                                                                  "choiceSettingValue": {
                                                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                                    "settingValueTemplateReference": {
                                                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                                      "settingValueTemplateId": "String",
                                                                      "useTemplateDefault": true
                                                                    },
                                                                    "value": "String",
                                                                    "children": [
                                                                      {
                                                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                                        "settingDefinitionId": null,
                                                                        "settingInstanceTemplateReference": {
                                                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                                          "settingInstanceTemplateId": "String"
                                                                        },
                                                                        "auditRuleInformation": {
                                                                          "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                                          "auditType": "String",
                                                                          "auditRuleMetadata": {
                                                                            "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                                            "metadataType": "String",
                                                                            "ruleId": "String",
                                                                            "ruleName": "String",
                                                                            "ruleDescription": "String",
                                                                            "ruleVersion": "String",
                                                                            "ruleSeverity": "String"
                                                                          }
                                                                        },
                                                                        "choiceSettingValue": {
                                                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                                          "settingValueTemplateReference": null,
                                                                          "value": "String",
                                                                          "children": null
                                                                        }
                                                                      }
                                                                    ]
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          }
                                                        ]
                                                      }
                                                    }
                                                  ]
                                                }
                                              }
                                            ]
                                          }
                                        }
                                      ]
                                    }
                                  }
                                ]
                              }
                            }
                          ]
                        }
                      }
                    ]
                  }
                }
              ]
            }
          }
        ]
      }
    }
  ]
}
```