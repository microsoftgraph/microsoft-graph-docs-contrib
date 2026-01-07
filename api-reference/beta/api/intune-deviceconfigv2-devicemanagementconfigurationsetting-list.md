---
title: "List deviceManagementConfigurationSettings"
description: "List properties and relationships of the deviceManagementConfigurationSetting objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List deviceManagementConfigurationSettings

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [deviceManagementConfigurationSetting](../resources/intune-deviceconfigv2-devicemanagementconfigurationsetting.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/auditPolicies/{deviceManagementAuditPolicyId}/settings
GET /deviceManagement/inventoryPolicies/{deviceManagementInventoryPolicyId}/settings
GET /deviceManagement/compliancePolicies/{deviceManagementCompliancePolicyId}/settings
GET /deviceManagement/configurationPolicies/{deviceManagementConfigurationPolicyId}/settings
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [deviceManagementConfigurationSetting](../resources/intune-deviceconfigv2-devicemanagementconfigurationsetting.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/auditPolicies/{deviceManagementAuditPolicyId}/settings
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 27832

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceManagementConfigurationSetting",
      "id": "9acf977e-977e-9acf-7e97-cf9a7e97cf9a",
      "settingInstance": {
        "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "Setting Definition Id value",
        "settingInstanceTemplateReference": {
          "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
          "settingInstanceTemplateId": "Setting Instance Template Id value"
        },
        "auditRuleInformation": {
          "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
          "auditType": "registry",
          "auditRuleMetadata": {
            "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
            "metadataType": "stig",
            "ruleId": "Rule Id value",
            "ruleName": "Rule Name value",
            "ruleDescription": "Rule Description value",
            "ruleVersion": "Rule Version value",
            "ruleSeverity": "Rule Severity value"
          }
        },
        "choiceSettingValue": {
          "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
          "settingValueTemplateReference": {
            "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
            "settingValueTemplateId": "Setting Value Template Id value",
            "useTemplateDefault": true
          },
          "value": "Value value",
          "children": [
            {
              "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "Setting Definition Id value",
              "settingInstanceTemplateReference": {
                "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                "settingInstanceTemplateId": "Setting Instance Template Id value"
              },
              "auditRuleInformation": {
                "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                "auditType": "registry",
                "auditRuleMetadata": {
                  "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                  "metadataType": "stig",
                  "ruleId": "Rule Id value",
                  "ruleName": "Rule Name value",
                  "ruleDescription": "Rule Description value",
                  "ruleVersion": "Rule Version value",
                  "ruleSeverity": "Rule Severity value"
                }
              },
              "choiceSettingValue": {
                "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                "settingValueTemplateReference": {
                  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                  "settingValueTemplateId": "Setting Value Template Id value",
                  "useTemplateDefault": true
                },
                "value": "Value value",
                "children": [
                  {
                    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                    "settingDefinitionId": "Setting Definition Id value",
                    "settingInstanceTemplateReference": {
                      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                      "settingInstanceTemplateId": "Setting Instance Template Id value"
                    },
                    "auditRuleInformation": {
                      "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                      "auditType": "registry",
                      "auditRuleMetadata": {
                        "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                        "metadataType": "stig",
                        "ruleId": "Rule Id value",
                        "ruleName": "Rule Name value",
                        "ruleDescription": "Rule Description value",
                        "ruleVersion": "Rule Version value",
                        "ruleSeverity": "Rule Severity value"
                      }
                    },
                    "choiceSettingValue": {
                      "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                      "settingValueTemplateReference": {
                        "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                        "settingValueTemplateId": "Setting Value Template Id value",
                        "useTemplateDefault": true
                      },
                      "value": "Value value",
                      "children": [
                        {
                          "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "settingDefinitionId": "Setting Definition Id value",
                          "settingInstanceTemplateReference": {
                            "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                            "settingInstanceTemplateId": "Setting Instance Template Id value"
                          },
                          "auditRuleInformation": {
                            "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                            "auditType": "registry",
                            "auditRuleMetadata": {
                              "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                              "metadataType": "stig",
                              "ruleId": "Rule Id value",
                              "ruleName": "Rule Name value",
                              "ruleDescription": "Rule Description value",
                              "ruleVersion": "Rule Version value",
                              "ruleSeverity": "Rule Severity value"
                            }
                          },
                          "choiceSettingValue": {
                            "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                            "settingValueTemplateReference": {
                              "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                              "settingValueTemplateId": "Setting Value Template Id value",
                              "useTemplateDefault": true
                            },
                            "value": "Value value",
                            "children": [
                              {
                                "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                "settingDefinitionId": "Setting Definition Id value",
                                "settingInstanceTemplateReference": {
                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                  "settingInstanceTemplateId": "Setting Instance Template Id value"
                                },
                                "auditRuleInformation": {
                                  "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                  "auditType": "registry",
                                  "auditRuleMetadata": {
                                    "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                    "metadataType": "stig",
                                    "ruleId": "Rule Id value",
                                    "ruleName": "Rule Name value",
                                    "ruleDescription": "Rule Description value",
                                    "ruleVersion": "Rule Version value",
                                    "ruleSeverity": "Rule Severity value"
                                  }
                                },
                                "choiceSettingValue": {
                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                  "settingValueTemplateReference": {
                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                    "settingValueTemplateId": "Setting Value Template Id value",
                                    "useTemplateDefault": true
                                  },
                                  "value": "Value value",
                                  "children": [
                                    {
                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                      "settingDefinitionId": "Setting Definition Id value",
                                      "settingInstanceTemplateReference": {
                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                        "settingInstanceTemplateId": "Setting Instance Template Id value"
                                      },
                                      "auditRuleInformation": {
                                        "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                        "auditType": "registry",
                                        "auditRuleMetadata": {
                                          "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                          "metadataType": "stig",
                                          "ruleId": "Rule Id value",
                                          "ruleName": "Rule Name value",
                                          "ruleDescription": "Rule Description value",
                                          "ruleVersion": "Rule Version value",
                                          "ruleSeverity": "Rule Severity value"
                                        }
                                      },
                                      "choiceSettingValue": {
                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                        "settingValueTemplateReference": {
                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                          "settingValueTemplateId": "Setting Value Template Id value",
                                          "useTemplateDefault": true
                                        },
                                        "value": "Value value",
                                        "children": [
                                          {
                                            "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                            "settingDefinitionId": "Setting Definition Id value",
                                            "settingInstanceTemplateReference": {
                                              "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                              "settingInstanceTemplateId": "Setting Instance Template Id value"
                                            },
                                            "auditRuleInformation": {
                                              "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                              "auditType": "registry",
                                              "auditRuleMetadata": {
                                                "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                "metadataType": "stig",
                                                "ruleId": "Rule Id value",
                                                "ruleName": "Rule Name value",
                                                "ruleDescription": "Rule Description value",
                                                "ruleVersion": "Rule Version value",
                                                "ruleSeverity": "Rule Severity value"
                                              }
                                            },
                                            "choiceSettingValue": {
                                              "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                              "settingValueTemplateReference": {
                                                "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                "settingValueTemplateId": "Setting Value Template Id value",
                                                "useTemplateDefault": true
                                              },
                                              "value": "Value value",
                                              "children": [
                                                {
                                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                  "settingDefinitionId": "Setting Definition Id value",
                                                  "settingInstanceTemplateReference": {
                                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                    "settingInstanceTemplateId": "Setting Instance Template Id value"
                                                  },
                                                  "auditRuleInformation": {
                                                    "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                    "auditType": "registry",
                                                    "auditRuleMetadata": {
                                                      "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                      "metadataType": "stig",
                                                      "ruleId": "Rule Id value",
                                                      "ruleName": "Rule Name value",
                                                      "ruleDescription": "Rule Description value",
                                                      "ruleVersion": "Rule Version value",
                                                      "ruleSeverity": "Rule Severity value"
                                                    }
                                                  },
                                                  "choiceSettingValue": {
                                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                    "settingValueTemplateReference": {
                                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                      "settingValueTemplateId": "Setting Value Template Id value",
                                                      "useTemplateDefault": true
                                                    },
                                                    "value": "Value value",
                                                    "children": [
                                                      {
                                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                        "settingDefinitionId": "Setting Definition Id value",
                                                        "settingInstanceTemplateReference": {
                                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                          "settingInstanceTemplateId": "Setting Instance Template Id value"
                                                        },
                                                        "auditRuleInformation": {
                                                          "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                          "auditType": "registry",
                                                          "auditRuleMetadata": {
                                                            "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                            "metadataType": "stig",
                                                            "ruleId": "Rule Id value",
                                                            "ruleName": "Rule Name value",
                                                            "ruleDescription": "Rule Description value",
                                                            "ruleVersion": "Rule Version value",
                                                            "ruleSeverity": "Rule Severity value"
                                                          }
                                                        },
                                                        "choiceSettingValue": {
                                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                          "settingValueTemplateReference": {
                                                            "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                            "settingValueTemplateId": "Setting Value Template Id value",
                                                            "useTemplateDefault": true
                                                          },
                                                          "value": "Value value",
                                                          "children": [
                                                            {
                                                              "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                              "settingDefinitionId": "Setting Definition Id value",
                                                              "settingInstanceTemplateReference": {
                                                                "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                                "settingInstanceTemplateId": "Setting Instance Template Id value"
                                                              },
                                                              "auditRuleInformation": {
                                                                "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                                "auditType": "registry",
                                                                "auditRuleMetadata": {
                                                                  "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                                  "metadataType": "stig",
                                                                  "ruleId": "Rule Id value",
                                                                  "ruleName": "Rule Name value",
                                                                  "ruleDescription": "Rule Description value",
                                                                  "ruleVersion": "Rule Version value",
                                                                  "ruleSeverity": "Rule Severity value"
                                                                }
                                                              },
                                                              "choiceSettingValue": {
                                                                "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                                "settingValueTemplateReference": {
                                                                  "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                                  "settingValueTemplateId": "Setting Value Template Id value",
                                                                  "useTemplateDefault": true
                                                                },
                                                                "value": "Value value",
                                                                "children": [
                                                                  {
                                                                    "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                                    "settingDefinitionId": "Setting Definition Id value",
                                                                    "settingInstanceTemplateReference": {
                                                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingInstanceTemplateReference",
                                                                      "settingInstanceTemplateId": "Setting Instance Template Id value"
                                                                    },
                                                                    "auditRuleInformation": {
                                                                      "@odata.type": "microsoft.graph.deviceManagementAuditPowerShellRuleDetail",
                                                                      "auditType": "registry",
                                                                      "auditRuleMetadata": {
                                                                        "@odata.type": "microsoft.graph.deviceManagementAuditRuleMetadata",
                                                                        "metadataType": "stig",
                                                                        "ruleId": "Rule Id value",
                                                                        "ruleName": "Rule Name value",
                                                                        "ruleDescription": "Rule Description value",
                                                                        "ruleVersion": "Rule Version value",
                                                                        "ruleSeverity": "Rule Severity value"
                                                                      }
                                                                    },
                                                                    "choiceSettingValue": {
                                                                      "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingValue",
                                                                      "settingValueTemplateReference": {
                                                                        "@odata.type": "microsoft.graph.deviceManagementConfigurationSettingValueTemplateReference",
                                                                        "settingValueTemplateId": "Setting Value Template Id value",
                                                                        "useTemplateDefault": true
                                                                      },
                                                                      "value": "Value value",
                                                                      "children": [
                                                                        {
                                                                          "@odata.type": "microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                                                          "settingDefinitionId": null,
                                                                          "settingInstanceTemplateReference": null,
                                                                          "auditRuleInformation": null,
                                                                          "choiceSettingValue": null
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
    }
  ]
}
```