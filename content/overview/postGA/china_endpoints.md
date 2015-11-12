# Microsoft Graph API endpoints for China

 _**Applies to:**  Office 365 for China operated by 21Vianet_

Office 365 operated by [21Vianet](http://www.en.21vianet.com/) is powered by the technology that Microsoft has licensed to 21Vianet. 

Microsoft does not operate the service itself; 21Vianet operates, provides and manages delivery of the service. 21Vianet is the largest carrier-neutral Internet data center services provider in China. It provides hosting, managed network services, and cloud computing infrastructure services. Microsoft licenses Office 365 to 21Vianet, who then use it to set up Office 365 data center for their users in China. 21Vianet operates local Office 365 data centers and provide Office 365 services to users in China while keeping their data within China. 21Vianet also provide user subscription and billing services, as well as support. 

The Microsoft Graph API resources and related services for Office 365 operated by 21Vianet have different URLs from those of Microsoft Graph API outside of China. These differences are documented as follows.

## Microsoft Azure

|**Office 365 for China**|**Office 365 outside of China**|
|:-----|:-----|
|`https://account.windowsazure.cn` | `https://account.windowsazure.com` |

Go to `https://account.windowszaure.cn` to set up the development environment for Office 365 for China.   For more information, see [Set up your Office 365 development environment](..\howto\setup-development-environment.md).

## Azure OpenId Connect and OAuth

|**Office 365 for China**|**Office 365 outside of China**|
|:-----|:-----|
| `https://login.chinacloudapi.cn` | `https://login.microsoftonline.com` |

Use `https://login.chinacloudapi.cn/common/oauth2/authorize` to authenticate the user and `login.chinacloudapi.cn/common/oauth2/token` to authorize the app on Office 365 for China.

## Office 365 developer site

In the following URLs, `{your-sub-domain}` is the name you specify when setting up your developer site.

|**Office 365 for China**|**Office 365 outside of China**|
|:-----|:-----|
| `https://{your-sub-domain}.partner.onmschina.cn` | `https://{your-sub-domain}.onmicrosoft.com` |

##  Microsoft Graph API
|**Office 365 for China**|**Office 365 outside of China**|
|:-----|:-----|
|`http://microsoftgraph.chinacloudapi.cn` |  `https://graph.microsoft.com` |

<!--##Additional Resources##

- [Microsoft Graph API overview](\microsoft-graph-api-overview.md)
- [Calling Microsoft Graph API](\call-microsoft-graph-api.md)
- [Hands on lab: Deep dive into the Office 365 unified API](http://dev.office.com/hands-on-labs/4585)-->
