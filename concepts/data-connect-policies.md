---
title: "Microsoft Graph data connect policies and licensing"
description: "Describes what policies are supported and how to assign ISV access SKUs to organizations."
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Microsoft Graph data connect policies and licensing

Microsoft Graph data connect uses [Azure managed applications](/azure/managed-applications/overview) to allow you to create and deploy your solutions in your customer's Azure environment. Managed applications allow you to support certain Azure policies, giving customers greater confidence and comfortability when using your applications. Additionally, you must purchase and apply licenses from Microsoft your organization or the organizations that install your applications, in order to allow the application to access data through data connect.

## Policies

The following Azure policies are supported for an Azure managed application built using Microsoft 365 data:

- [ADLS Gen1 Encryption Required Policy](/azure/azure-policy/scripts/enforce-datalakestore-encryption)

When you select any of the policies during Azure marketplace publishing, the policy compliance status will be checked and enforced for all installations of your application. All selected policies that are compliant will be shown to the data approvers as part of the data request. Any policy compliance violation would cause the pipeline run to fail and stop the data extraction.

If you would like to request support for additional policies , let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581).

## Licensing

Access to the Microsoft Graph data connect toolset is available either through assigning licenses for Workplace Analytics or through Azure Billing. Pricing through Azure Billing will enter preview on February 1, 2021.

Unlimited use of Microsoft Graph data connect is available through Workplace Analytics, which is licensed on a per-user, per-month basis.  Organizations with Workplace Analytics can extend their insights from Microsoft 365 data by granting and governing access to their data at scale. To learn more, including how to purchase, visit the [Workplace Analytics product page](https://products.office.com/business/workplace-analytics).

If the user for which you are accessing data is not licensed with Workplace Analytics, you will receive a bill through Azure Billing. The bill will be associated with the Azure Subscription of the Azure Data Factory you are using. The price is based on the number of Microsoft Graph objects you are accessing. While this billing capability is in preview, the rate is $0.375 for 1,000 Microsoft Graph objects. For example, if you access 10,000 total objects from many users, you will receive an Azure bill for $3.75.

## Next Steps
If you would like to request support for additional policies, let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581). To learn more about Workplace Analytics, including how to purchase, visit the [Workplace Analytics product page](https://products.office.com/business/workplace-analytics).