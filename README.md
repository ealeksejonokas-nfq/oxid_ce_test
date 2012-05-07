==Title==
Hot Offer extension

==Author==
Edvinas Aleksejonokas

==Prefix==
nfq

==Version==
0.0.1

==E-Mail==
ealeksejonokas@nfq.lt

==Description==
Adds a posibillity to define a product as an "Hot Offer".

==Installation==
copy files/folders from "eshop" to /yourshopdir/

Execute the install.sql script.
If you use OXID eShop > 4.4.8, go to admin -> Service -> Tools an press "Update Views"
To generate the views with the new column "nfqhotoffer".

If you use older OXID eShop version then 4.5.0 you should add module:
nfq_hot_offer => nfq_hot_offer/nfq_hot_offer

Add the module entries in admin.
Clean oxid tmp folder to update DB field cache and language constants in admin.
You should be able to go to eShop admin sections "Administer Products" -> "Products".
Look for "Hot Offer" tab.