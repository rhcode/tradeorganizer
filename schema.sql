create table trade_block (
    trade_block_id int not null auto_increment,
    trade_block_status varchar(10),
    trade_block_underlying varchar(5),
    trade_block_strategy varchar(50),
    primary key (trade_block_id)
);

create table tags (
    tag_creation_date datetime,
    tag_id int not null auto_increment,
    tag_name varchar(80),
    primary key (tag_id)
);

create table trade_block_tags (
    trade_block_id int not null,
    tag_id int not null,
    foreign key (trade_block_id) references trade_block(trade_block_id),
    foreign key (tag_id) references tags(tag_id)
);

create index tag_name_index on tags (tag_name);

create table legs (
    leg_id int not null auto_increment,
    leg_expiration varchar(10),
    leg_strike int,
    leg_option_type varchar(5),
    leg_trade_type varchar(10),
    leg_price float,
    leg_open_status varchar(10),
    primary key (leg_id)
);

create table trades (
    trade_id int not null auto_increment,
    trade_time datetime,
    trade_net_price float,
    primary key (trade_id)
);

create table trade_legs (
    trade_id int not null,
    leg_id int not null,
    foreign key (trade_id) references trades(trade_id),
    foreign key (leg_id) references legs(leg_id)
);
