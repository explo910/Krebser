-- if exists drop database bunker;

create database bunker;

use bunker;


-- Plattformen auf denen Gehalndet wird
create table broker(
brokerID int primary key,
brokerName varchar(15),
descr varchar(3)
);

-- Fees für die Broker buy/sell
create table fee(
feeID int primary key,
valueBuy varchar(5),
valueSell varchar(5),
brokerID int,
Foreign Key (brokerID) references broker(brokerID) 
);

-- verschiednen crypto Coins die getradet werden sollen
create table coin(
coinID int primary key,
coinName varchar(15),
coinShort varchar(4)
);


-- "Guthaben" - Coins die dem Bot zur verfügung stehen
create table balance(
balanceID int primary key,
coinID int,
brokerID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID) 
);

-- ####################orders##############

-- New Order erstellen
create table order_buy(
orderID int primary key,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID), 
Foreign Key (coinID) references coin(coinID)
);

-- Verkaufen
create table order_sell(
orderID int primary key,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID), 
Foreign Key (coinID) references coin(coinID)
);

-- Nicht durchgegangen
create table order_error(
orderID int primary key,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID), 
Foreign Key (coinID) references coin(coinID)
);

-- fertige transaktionen
create table order_closed(
orderID int primary key,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID), 
Foreign Key (coinID) references coin(coinID)
);
-- ###############ende orders###################




-- ######################Broker-Coins#######################################
-- --------------------- Bitcoin --------------------------------------
-- History Bitcoin - Bitcoin.de
create table BTC_BCD(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Bitcash - Bitcoin.de
create table BCH_BCD(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Ethereum - Bitcoin.de
create table ETH_BCD(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);


-- --------------------- Bitcoin.de ende --------------------------------------


-- --------------------- Kraken --------------------------------------

-- History Bitcoin - Kraken
create table BTC_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Bitcach - Kraken
create table BCH_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Ethereum - Kraken
create table ETH_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History DASH - Kraken
create table DASH_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Monero - Kraken
create table XMR_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Ripple - Kraken
create table XRP_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Stellar - Kraken
create table XLM_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History EOS - Kraken
create table EOS_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);


-- History Iconomi - Kraken
create table ICN_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Zcash - Kraken
create table ZEC_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Dogecoins - Kraken
create table XDG_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Gnosis - Kraken
create table GNO_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Litecoin - Kraken
create table LTC_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Augur - Kraken
create table REP_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Melon - Kraken
create table MLN_KRA(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Bitcoin - Binance
create table BTC_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);


-- History Bitcash - Binance
create table BCH_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Ethereum - Binance
create table ETH_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Verge - Binance
create table XVG_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Basic Attention Token - Binance
create table BAT_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Ripple - Binance
create table XRP_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Litcoin - Binance
create table LTC_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Dash - Binance
create table DASH_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Tron - Binance
create table TRX_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Stellar - Binance
create table XLM_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Requested network - Binance
create table REQ_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History  - Binance
create table _BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History IOTA - Binance
create table IOTA_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Qtum - Binance
create table QTUM_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Cardano - Binance
create table AGA_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History NEO - Binance
create table NEO_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Viberate - Binance
create table VIB_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);

-- History Lisk - Binance
create table LSK_BIN(
ID int primary Key,
price float,
priceDate date,
priceTime time,
brokerID int,
coinID int,
Foreign Key (brokerID) references broker(brokerID),
Foreign Key (coinID) references coin(coinID)
);
