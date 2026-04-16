---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const configurationMonitor = {
  displayName: 'Demo Monitor',
  description: 'This is a Demo Monitor',
  baseline: {
    displayName: 'Demo Baseline',
    description: 'This is a baseline with SharedMailbox, AcceptedDomain and MailContact',
    parameters: [
      {
        displayName: 'FQDN',
        description: 'The Fully Qualified Domain Name of the Tenant',
        parameterType: 'String'
      }
    ],
    resources: [
      {
        displayName: 'TestSharedMailbox Resource',
        resourceType: 'microsoft.exchange.sharedmailbox',
        properties: {
          DisplayName: 'TestSharedMailbox',
          Identity: 'TestSharedMailbox',
          Ensure: 'Present',
          PrimarySmtpAddress: '[concat(\'testSharedMailbox\', parameters(\'FQDN\'))]',
          EmailAddresses: [
            'abc@contoso.onmicrosoft.com',
            '[concat(\'testSharedMailbox@\', parameters(\'FQDN\'))]'
          ]
        }
      },
      {
        displayName: 'Accepted Domain',
        resourceType: 'microsoft.exchange.accepteddomain',
        properties: {
          Identity: 'contoso.onmicrosoft.com',
          DomainType: 'InternalRelay',
          Ensure: 'Present'
        }
      },
      {
        displayName: 'Mail Contact Resource',
        resourceType: 'microsoft.exchange.mailcontact',
        properties: {
          Name: 'Chris',
          DisplayName: 'Chris',
          ExternalEmailAddress: 'SMTP:chris@fabrikam.com',
          Alias: 'Chrisa',
          Ensure: 'Present'
        }
      }
    ]
  },
  parameters: {
    FQDN: 'contoso.onmicrosoft.com'
  }
};

await client.api('/admin/configurationManagement/configurationMonitors/b86049ce-0180-404e-803a-5616d49290d7')
	.update(configurationMonitor);

```