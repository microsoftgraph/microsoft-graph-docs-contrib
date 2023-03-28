---
title: "ruleBasedSubjectSet resource type"
description: "Specifies the rules to define the subjects that are the scope of a lifecycle workflow triggerAndScopeBasedConditions configuration."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# ruleBasedSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the rules to define the subjects that are the scope of a lifecycle workflow [triggerAndScopeBasedConditions](../resources/identitygovernance-triggerandscopebasedconditions.md) configuration.

Inherits from [subjectSet](../resources/subjectset.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|rule|String|The rule for the subject set. Lifecycle Workflows supports a rich set of [user properties](user.md#properties) for configuring the rules using `$filter` query expressions. For more information, see [supported user and query parameters](#supported-user-properties-and-query-parameters). |

### Supported user properties and query parameters

Lifecycle Workflows supports the following user properties for configuring the rules that are in the scope of an execution condition. You can use the `$filter` OData query parameter with either the `eq`, `ne`, `in`, or `startsWith` operators. You can also combine the filter expressions using one of the following conjunction and disjunction operators:
+ `and`
+ `or`
+ `and` and `not`
+ `or` and `not`

| User property                                          | Property type                 | Supports eq, ne, in | Supports startsWith |
|--------------------------------------------------------|-------------------------------|---------------------|---------------------|
| accountEnabled                                         | Boolean                       | :heavy_check_mark:  | &nbsp;              |
| assignedPlans/any(a:a/capabilityStatus)                | assignedPlan collection       | :heavy_check_mark:  | &nbsp;              |
| assignedPlans/any(a:a/service)                         | assignedPlan collection       | :heavy_check_mark:  | &nbsp;              |
| assignedPlans/any(a:a/servicePlanId)                   | assignedPlan collection       | :heavy_check_mark:  | &nbsp;              |
| city                                                   | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| companyName                                            | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| country                                                | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| department                                             | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| displayName                                            | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| employeeId                                             | String                        | :heavy_check_mark:  | &nbsp;              |
| employeeOrgData/costCenter                             | employeeOrgData               | :heavy_check_mark:  | &nbsp;              |
| employeeOrgData/division                               | employeeOrgData               | :heavy_check_mark:  | &nbsp;              |
| employeeType                                           | String                        | :heavy_check_mark:  | &nbsp;              |
| faxNumber                                              | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| givenName                                              | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| jobTitle                                               | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| mail                                                   | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| mailNickname                                           | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| mobilePhone                                            | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| officeLocation                                         | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| onPremisesExtensionAttributes/extensionAttribute1 - 15 | onPremisesExtensionAttributes | :heavy_check_mark:  | &nbsp;              |
| onPremisesSecurityIdentifier                           | String                        | :heavy_check_mark:  | &nbsp;              |
| onPremisesSyncEnabled                                  | Boolean                       | :heavy_check_mark:  | &nbsp;              |
| otherMails/any(p:p)                                    | String Collection             | :heavy_check_mark:  | :heavy_check_mark:  |
| postalCode                                             | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| preferredLanguage                                      | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| proxyAddresses/any(p:p)                                | String collection             | :heavy_check_mark:  | :heavy_check_mark:  |
| state                                                  | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| streetAddress                                          | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| surname                                                | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| usageLocation                                          | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| userPrincipalName                                      | String                        | :heavy_check_mark:  | :heavy_check_mark:  |
| userType                                               | String                        | :heavy_check_mark:  | &nbsp;              |

You can also configure rules using [Directory (Azure AD) extensions](/graph/extensibility-overview#directory-azure-ad-extensions). It is not supported to configure rules with schema extensions, open extensions or [custom security attributes](/graph/api/resources/custom-security-attributes-overview).

#### Examples of rules

| Example rule                                                           | Description                                                                             |
|------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| `"rule": "(department eq 'Marketing')"`                                | Run the workflow for users in the "Marketing" department.                               |
| `"rule": "(department ne 'Marketing')"`                                | Run the workflow for users not in the "Marketing" department.                           |
| `"rule": "(department in ('Marketing'))"`                              | Run the workflow for users in the "Marketing" department.                               |
| `"rule": "(accountEnabled eq true)"`                                   | Run the workflow for users whose account is enabled.                                    |
| `"rule": "(employeeOrgData/costCenter eq '100')"`                      | Run the workflow for users whose costCenter is `100`.                                   |
| `"rule": "(otherMails/any(p:startsWith(p, 'Av')))"`                    | Run the workflow for users whose **otherMails** starts with `Av`.                       |
| `"rule": "(department eq 'Marketing') and (accountEnabled in (true))"` | Run the workflow for users in the marketing department and whose account is enabled.    |
| `"rule": "(department eq 'Marketing') or (not (city eq 'Redmond'))"`   | Run the workflow for users in the marketing department and whose city is not "Redmond". |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.ruleBasedSubjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
  "rule": "String"
}
```
