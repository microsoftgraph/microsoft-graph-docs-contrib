---
title: "Microsoft Graph Data Connect policies and billing"
description: "Learn about Azure policies supported for an app built with Microsoft 365 data and the bill associated with the Azure Synapse or Azure Data Factory you are using."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Microsoft Graph Data Connect policies and billing

Microsoft Graph Data Connect uses [Azure managed applications](/azure/managed-applications/overview) to allow you to create and deploy your solutions in your Azure environment. Managed applications let you support certain Azure policies, giving customers greater confidence and comfortability when using your applications.

## Policies

The following Azure policies are supported for an Azure managed application built by using Microsoft 365 data:

- [Azure Policy built-in definitions for Azure Storage](/azure/storage/common/policy-reference)
- [Introduction to Azure Data Lake Storage Gen2](/azure/storage/blobs/data-lake-storage-introduction)
- [Azure Policy built-in definitions for Azure Data Lake Storage Gen1](/azure/data-lake-store/policy-reference)

> [!NOTE]
> Azure Data Lake Storage Gen1 and Gen2 use different policies because Azure Data Lake Storage Gen2 implements Azure Storage.

When you select any of the policies during Azure Marketplace publishing, the policy compliance status is checked and enforced for all installations of your application. All selected policies that are compliant are shown to the data approvers as part of the data request. Any policy compliance violation causes the pipeline run to fail and stop the data extraction.

## Billing

A bill is associated with the Azure subscription of the Azure Synapse or Azure Data Factory you are using. For more information about billing, see the [Pricing page](https://azure.microsoft.com/pricing/details/graph-data-connect/).


## See also

- [User selection and filtering](data-connect-filtering.md)
- [Data Connect frequently asked questions](data-connect-faq.md)
- [Dataset, regions and sinks](/graph/data-connect-datasets#datasets).
