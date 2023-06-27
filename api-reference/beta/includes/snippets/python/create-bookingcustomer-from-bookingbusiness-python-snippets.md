---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingCustomer()
request_body.display_name = 'Joni Sherman'

request_body.email_address = 'jonis@relecloud.com'

addresses_physical_address1 = PhysicalAddress()
addresses_physical_address1.post_office_box = ''

addresses_physical_address1.street = '4567 Main Street'

addresses_physical_address1.city = 'Buffalo'

addresses_physical_address1.state = 'NY'

addresses_physical_address1.country_or_region = 'USA'

addresses_physical_address1.postal_code = '98052'

addresses_physical_address1.type(PhysicalAddressType.Home('physicaladdresstype.home'))


addressesArray []= addressesPhysicalAddress1;
addresses_physical_address2 = PhysicalAddress()
addresses_physical_address2.post_office_box = ''

addresses_physical_address2.street = '4570 Main Street'

addresses_physical_address2.city = 'Buffalo'

addresses_physical_address2.state = 'NY'

addresses_physical_address2.country_or_region = 'USA'

addresses_physical_address2.postal_code = '98054'

addresses_physical_address2.type(PhysicalAddressType.Business('physicaladdresstype.business'))


addressesArray []= addressesPhysicalAddress2;
request_body.addresses(addressesArray)


phones_phone1 = Phone()
phones_phone1.number = '206-555-0100'

phones_phone1.type(PhoneType.Home('phonetype.home'))


phonesArray []= phonesPhone1;
phones_phone2 = Phone()
phones_phone2.number = '206-555-0200'

phones_phone2.type(PhoneType.Business('phonetype.business'))


phonesArray []= phonesPhone2;
request_body.phones(phonesArray)





result = await client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').customers.post(request_body = request_body)


```