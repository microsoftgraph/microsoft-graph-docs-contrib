---
title: "deviceManagementConfigurationChoiceSettingValue resource type"
description: "Setting value"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationChoiceSettingValue resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Setting value


Inherits from [deviceManagementConfigurationSettingValue](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingvalue.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingValueTemplateReference|[deviceManagementConfigurationSettingValueTemplateReference](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingvaluetemplatereference.md)|Setting value template reference Inherited from [deviceManagementConfigurationSettingValue](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingvalue.md)|
|value|String|Choice setting value: an OptionDefinition ItemId.|
|children|[deviceManagementConfigurationSettingInstance](../resources/intune-shared-devicemanagementconfigurationsettinginstance.md) collection|Child settings.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
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
                                                                  "choiceSettingValue": {
                                                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                                    "settingValueTemplateReference": {
                                                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                                      "settingValueTemplateId": "String",
                                                                      "useTemplateDefault": true
                                                                    },
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
```