---
title: "Microsoft Graph Data Connect Troubleshooting"
description: "MGDC Troubleshooting page is meant to help developers get unblocked quickly or help address any issues they may have based on how they want to set up MGDC."
author: "David1997sb"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Microsoft Data Connect Troubleshooting

Microsoft Graph Data Connect lets developers create applications that customers can use to provide managed access to their at-scale Microsoft Graph datasets. This article aims to help MGDC developers further research any common troubleshooting issues and get unblocked quickly so they can run MGDC successfully on their own.

 For an introduction to MGDC, see the [overview](data-connect-concept-overview.md). 

For MGDC FAQ see the [FAQ](data-connect-faq.md).

For further questions that are not covered here, please reach out dataconnect@microsoft.com.

## Troubleshooting for Service Principal check when running your first MGDC Pipeline

If you are having issues running your pipelines for the first time, please check how you have defined the owners for Service Principal. Please ensure you have followed the below.

1. The Service Principal must correlate to a user account or user ID for ownership. The owner for a Service Principal cannot be another Service Principal.

2. The owner account must have:

    1. User account
    2. The user account must have an Exchange E5 Office license with Exchange Online capabilities. This account does NOT need admin privilges to be able to run pipelines against this Service Principal check.

3. If the owning member is no longer valid in a tenant's system, pipelines will fail this check unless a current valid user within the tenant owns the account. Please ensure that the owning account is passed down to another member with the above requirements if there is a change in ownership.

## Troubleshooting on how to become an approver to approve MGDC jobs

If you are having issues approving jobs within your tenant for your specified pipeline runs or extractions, please ensure that the approvers in your tenant meet the criteria below. Certain priviledges must be granted to designated approvers to successfully approve jobs.

1. Approvers must be real users in the tenant. For example, they cannot be former member IDs of the tenant or Service Principals. They must be currently active users within the tenant. 

2. The user account must have an Exchange E5 Office license with Exchange Online capabilities and mailbox.

3. If approvers want to approve jobs through the M365 admin center, approvers will need global admin priviledges. Global admin priviledges are not needed when approving jobs via PowerShell script.

## Troubleshooting on Multi-Geo tenant extraction for MGDC

Sometimes, customers may want to add other regions to their pipelines, especially larger customers with multi-geo tenants. While multi-geo tenants can certainly still use MGDC, please remember that when customers request data, they can only get data for one region extracted per region. Customers cannot use one pipeline to extract data from multiple geos. This rule is enforced by MGDC for the privacy and security for a customer's tenant users. 

Below things to keep in mind for customers with multi-geo tenats to extract data:

1. When requesting datasets, MGDC only allows datasets to be extracted from the same region as the tenant. 
    1. For example, if you have a tenant in Europe (EUR) but want to run a pipeline for your users in North America (NAM), you will only get data for users in NAM since you specified a pipeline for NAM.

2. Multi-geo tenants can extract data for their tenants by setting up region specific pipelines. 
    1. For example, one region maps to one or a set of pipelines for that region. 

## Troubleshooting on aggregating mutliple JSON file outputs into one

1. To recombine the files together, you will need to add a new *Copy data activity* after the extraction.

    ![A screenshot for copy data](../concepts/images/data-connect-troubleshooting-copy-adf.png)

2. You will need to set the source of this new activity to be the location where you’ve extracted the files (Azure Storage) and set the files’ format as JSON and specify *Wildcard file path* as the path type.

3. Then on the Sink tab, simply specify the location where you wish to have the combined file created and make sure you select the *Merge files* behavior.

## Troubleshooting allow listing Network IP address with Azure IR

Customers will need to allow list their IPs based on their region, the region of tenancy they want to extract data from and deciding what their correct Azure IR region is. This issue is only aimed at customers who have specific needs related to allow listing IPs with regions or are closing account for public access. 

1. Find an Office to Azure region mapping: Look up which Office region you will be extracting user data from [here](https://docs.microsoft.com/en-us/graph/data-connect-datasets#regions). 

    1. The Azure region you're running a pipeline in must map to an Office region to extract the users for the tenant. MGDC will extract only for that region as MGDC does not allow for cross region extraction. 
    2. For example, if you're running a pipeline in West Europe Azure region, it will only extract the users for Europe (EUR) Office region since West Europe Azure region maps to the Europe Office region.

2. Since MGDC will allowlist IP addresses for ADF services on the storage, the destination storage account cannot be on certain regions (you cannot allowlist services on the same region). Please follow table 1 below to select an Azure Storage account that meets the criteria below.

    1.  | O365 Region | Region where the storage can't be in |
        |-------------|--------------------------------------| 
        | NAM         | East US                              |
        | CAN         | Canada East                          | 
        | GBR         | UK South                             |
        | EUR         | West Europe                          |
        | APAC        | Southeast Asia                       |
        | AUS         | Australia Southeast                  |

3. Look up how to configure your azure storage account and [grant access from an internet IP range](https://docs.microsoft.com/en-us/azure/storage/common/storage-network-security?tabs=azure-portal#grant-access-from-an-internet-ip-range). 

4. Once you have configured your Office to Azure region mapping and the correct region your Azure storage account can be in, you can [allowlist IPs on your Azure Storage account](https://docs.microsoft.com/en-us/azure/data-factory/azure-integration-runtime-ip-addresses#azure-integration-runtime-ip-addresses-specific-regions). 

5. Please follow table 2 below to allowlist IPs based on the O365 region and then download IP ranges [here](https://www.microsoft.com/en-us/download/details.aspx?id=56519) based on the table below.

    1.  | O365 Region | Region you need to allowlist         |
        |-------------|--------------------------------------| 
        | NAM         | East US                              |
        | CAN         | Canada East                          | 
        | GBR         | UK South                             |
        | EUR         | West Europe                          |
        | APAC        | Southeast Asia                       |
        | AUS         | Australia Southeast                  |

    2. If your pipeline is running on another region that is different from the one you have chosen in step 2 table 1 above, you will need to allowlist the region based on the mapping of Office to Azure regions in step 1. 

        1. Please note, this region cannot be in the same region as the destination account. We advise that you create an Azure IR on the same region you need to allowlist based on step 2.