---
title: "identityGovernance resource type"
description: "The singleton for containing identity governance resources."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# identityGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The identity governance singleton is the container for the following Azure Active Directory identity governance features that are exposed through the following resources and APIs:

+ [Access reviews](accessreviewsv2-overview.md)
+ [Entitlement management](entitlementmanagement-overview.md)
+ [App consent](consentrequests-overview.md)
+ [Lifecycle Workflows](identitygovernance-lifecycleworkflows-overview.md)
+ [Terms of use](agreement.md)
+ [Privileged Identity Management](privilegedidentitymanagementv3-overview.md)

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|accessReviews|[accessReviewSet](accessreviewset.md)| Container for the base resources that expose the access reviews API and features.|
|appConsent|[appConsent](appconsentapprovalroute.md)| Container for base resources that expose the app consent request API and features. Currently exposes only the [appConsentRequests](appconsentrequest.md) resource.|
|entitlementManagement|[entitlementManagement](entitlementmanagement.md)| Container for entitlement management resources, including [accessPackageCatalog](accesspackagecatalog.md), [connectedOrganization](connectedorganization.md), and [entitlementManagementSettings](entitlementmanagementsettings.md).|
|termsOfUse|[termsOfUseContainer](termsofusecontainer.md)| Container for the resources that expose the terms of use API and its features, including [agreements](agreement.md) and [agreementAcceptances](agreementacceptance.md). |
|lifecycleWorkflows|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](identitygovernance-lifecycleworkflowscontainer.md)| Container for Lifecycle Workflow resources, including [workflow](identitygovernance-workflow.md), [customTaskExtension](identitygovernance-customtaskextension.md), and [lifecycleManagementSettings](identitygovernance-lifecyclemanagementsettings.md).|
|roleManagementAlerts|[roleManagementAlert](rolemanagementalert.md)| Container for the base resources that expose the security alerts relating to Privileged Identity Management (PIM) for Azure AD roles.|
|privilegedAccess|[privilegedAccess](privilegedaccess.md)| Container for the base resources that expose the API and features related to Privileged Identity Management (PIM) for Groups.|


# identityGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get identityGovernance](../api/identitygovernance-get.md)|[identityGovernance](../resources/identitygovernance.md)|Read the properties and relationships of an [identityGovernance](../resources/identitygovernance.md) object.|
|[Update identityGovernance](../api/identitygovernance-update.md)|[identityGovernance](../resources/identitygovernance.md)|Update the properties of an [identityGovernance](../resources/identitygovernance.md) object.|
|[List permissionsAnalyticsAggregation](../api/identitygovernance-list-permissionsanalytics.md)|[permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md) collection|Get the permissionsAnalyticsAggregation resources from the permissionsAnalytics navigation property.|
|[Create permissionsAnalyticsAggregation](../api/identitygovernance-post-permissionsanalytics.md)|[permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md)|Create a new permissionsAnalyticsAggregation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessReviews|[accessReviewSet](../resources/accessreviewset.md)|**TODO: Add Description**|
|appConsent|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md)|**TODO: Add Description**|
|entitlementManagement|[entitlementManagement](../resources/entitlementmanagement.md)|**TODO: Add Description**|
|lifecycleWorkflows|[lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md)|**TODO: Add Description**|
|permissionsAnalytics|[permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md)|**TODO: Add Description**|
|privilegedAccess|[privilegedAccessRoot](../resources/privilegedaccessroot.md)|**TODO: Add Description**|
|roleManagementAlerts|[roleManagementAlert](../resources/rolemanagementalert.md)|**TODO: Add Description**|
|termsOfUse|[termsOfUseContainer](../resources/termsofusecontainer.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance"
}
```