WITH jumlah_item AS (
  SELECT item, count(*) as jumlah_pembelian
  from item_bought
  GROUP by item )
SELECT item
from jumlah_item
WHERE jumlah_pembelian <> (
  select MIN(jumlah_pembelian)
  from jumlah_item )
AND jumlah_pembelian <> (
  select MAX(jumlah_pembelian)
  from jumlah_item);




