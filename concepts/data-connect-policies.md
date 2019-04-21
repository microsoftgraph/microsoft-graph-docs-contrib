---
title: "Policies and monetization"
description: "Describes what policies are supported and how to assign ISV access SKUs to organizations"
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Policies and monetization

Microsoft Graph data connect leverages [Azure managed applications](https://docs.microsoft.com/en-us/azure/managed-applications/overview) to allow developers to create and deploy their solutions in their customer's Azure environment. Managed applications allow data connect developers to support certain Azure policies, giving customers greater confidence and comfortability when using their applications. Additionally, developers can purchase and apply licenses to the organizations installing their applications, enabling the application to access data through data connect.

## Policies

The following Azure policies are supported for an Azure Managed Application built using Office 365 data:
- [ADLS Gen1 Encryption Required Policy](https://docs.microsoft.com/en-us/azure/azure-policy/scripts/enforce-datalakestore-encryption)

When you select any of the policies during Azure marketplace publishing, the policy compliance status will be checked and enforced for all installations of your application. All selected policies that are compliant will be shown to the data approvers as part of the data request. Any policy compliance violation would cause the pipeline run to fail and stop the data movement.

If you would like to see additional policies supported, let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581).

## Monetization

To be filled in

## Next Steps