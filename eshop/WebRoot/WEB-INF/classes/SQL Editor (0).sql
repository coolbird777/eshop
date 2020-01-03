
    create table "db_shop"."dbo"."tb_goods"(
        "ID" bigint identity not null,
       "typeID" int not null,
       "goodsName" varchar(200) not null,
       "introduce" text null,
       "price" money(19,4) not null,
       "nowPrice" money(19,4) null,
       "picture" varchar(100) null,
       "INTime" datetime default '(getdate())' not null,
       "newGoods" int default '(0)' not null,
       "sale" int default '(0)' null,
       "hit" int default '(0)' null,
        constraint "PK_tb_bookinfo" primary key ("ID")
    )
go

    create unique index "PK_tb_bookinfo" on "db_shop"."dbo"."tb_goods"("ID")
go