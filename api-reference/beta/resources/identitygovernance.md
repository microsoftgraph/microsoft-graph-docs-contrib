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
