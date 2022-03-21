UPDATE `shanetest30`
SET `metadata_json` = ''
WHERE `id` = "0";


create table shanetest31
(
    id       int auto_increment,
    book_url text not null,
    metadata json null,
    uuid     text null,
    constraint shanetest31_pk
        primary key (id)
);

create unique index shanetest31_id_uindex
    on shanetest31 (id);



UPDATE `shanetest31`
SET `metadata` = "{"author": "채팔이,엑저", "title": "犯规", "publish_status": "連載中", "cover_url": "https://boylove.cc/Public/Uploads/img/20211008/2e9f0e21b22c80ce30c3fe18632f0152.jpg", "classification": "韩漫,强攻强受,小说改编,美人受,都市,财阀攻,还债,剧情,赌博", "book_url": "https://boylove.cc/home/book/index/id/13571", "descriptions": "《반칙》"}"
WHERE `id` = "1";



update shanetest31
set metadata = '{
  "hello": "world"
}'
where id = 1;



insert into shanetest31 (`book_url`, `metadata`, `uuid`)
VALUES ('https://boylove.cc/home/book/index/id/12228', '{
  "Hello": "Hello"
}', 'f43fe68886ba452aa68726453c17b94b');

UPDATE `shanetest31`
SET `metadata` = '{
  "author": "Niji",
  "title": "还债/无动作/危险条约",
  "publish_status": "連載中",
  "cover_url": "https://boylove.cc/Public/Uploads/img/20220308/6532a0bb11fcdcf72ee4290bbccea0ed.jpg",
  "classification": "韩漫,BDSM,ABO,高H,女王受,黑道,调教,SM",
  "book_url": "https://boylove.cc/home/book/index/id/14591",
  "descriptions": "《민모션》 Minmotion Syndrome别名敏动综合症平台Bomtoon六亿的债务我可以替你还由于父亲留下的债务而被带进来的徐泰云嘲笑讽刺朴在仁是一个Omega然而泰云闻到他微弱的信息素气味并认出他是一个omega对此感到有兴趣的在仁告知泰云他可以帮忙还债条件是买下他..."
}',
    `uuid`= 'cf2bba4f-7e42-42d8-9f43-c2d7e2ab9f83',
    `book_url`='https://boylove.cc/home/book/index/id/14591'
WHERE `id` = 3;


UPDATE `shanetest31`
SET `metadata` = '{
  "author": "Niji",
  "title": "还债/无动作/危险条约",
  "publish_status": "連載中",
  "cover_url": "https://boylove.cc/Public/Uploads/img/20220308/6532a0bb11fcdcf72ee4290bbccea0ed.jpg",
  "classification": "韩漫,BDSM,ABO,高H,女王受,黑道,调教,SM",
  "book_url": "https://boylove.cc/home/book/index/id/14591",
  "descriptions": "《민모션》 Minmotion Syndrome 别名 敏动综合症 平台 Bomtoon 六亿的债务 我可以替你还由于父亲留下的债务而被带进来的徐泰云嘲笑讽刺朴在仁是一个Omega然而泰云闻到他微弱的信息素气味并认出他是一个omega对此感到有兴趣的在仁告知泰云他可以帮忙还债条件是买下他..."
}',
    `uuid`= '7f055c5d-6227-4fca-9416-7f67217f4d07',
    `book_url`='https://boylove.cc/home/book/index/id/14591'
WHERE `id` = 3;

UPDATE `shanetest31`
SET `metadata` = '{
  "author": "바람",
  "title": "劣质Omega的秘密/K的秘密/劣质欧米伽的秘密",
  "publish_status": "連載中",
  "cover_url": "https://boylove.cc/Public/Uploads/img/20210624/916470b561637ca8d869c781c6d00ef6.jpg",
  "classification": "韩漫,ABO,甜文,校园,可爱受,双向暗恋,自卑受,甜宠,巨屌,高H,无脑受",
  "book_url": "https://boylove.cc/home/book/index/id/12419",
  "descriptions": "身为劣质Omega的金夏镇，在学校里就一直暗恋着车秀贤，可对方是极优质Alpha。不敢表白的他暗恋了对方七年，最终决定鼓起勇气去告白，于是在朋友的建议下，他穿着女装接近了车秀贤。"
}',
    `uuid`= 'b59fc947-abca-40b4-b42b-57023b8d5b44',
    `book_url`='https://boylove.cc/home/book/index/id/12419'
WHERE `id` = 14;

UPDATE `shanetest31`
SET `metadata` = '{
  "author": "흰귀",
  "title": "奇怪的梦境/这梦不对劲/我的梦很奇怪吗",
  "publish_status": "連載中",
  "cover_url": "https://boylove.cc/Public/Uploads/img/20210226/6038cec6b5ac8.jpg",
  "classification": "韩漫,搞笑,女王受,忠犬攻,高H,可爱攻,傲娇受,双向暗恋,诱受,正太受,各种play,触手",
  "book_url": "https://boylove.cc/home/book/index/id/12277",
  "descriptions": "<꿈자리가 이상한데요?!>　平台：ridibooks　画家twitter：@whiteeared　　“如果能有人来...摸摸我就好了。”申亦范在为委托人驱除梦魇之时，却反遭‘逆’ 的侵蚀。问题是自己的逆竟然发作成了‘干茶烈火般的x欲’....!“我来帮你吧，亦范先生可以尽情在我身上发泄。”"
}',
    `uuid`= '7390b39e-ea52-4797-94c7-920354523a21',
    `book_url`='https://boylove.cc/home/book/index/id/12277'
WHERE `id` = 13;

UPDATE `shanetest31`
SET `metadata` = '{
  "author": "오류",
  "title": "相剋/相克",
  "publish_status": "連載中",
  "cover_url": "https://boylove.cc/Public/Uploads/img/20211019/9a31dda8c2d1e7d5be8b9317f0911ad3.jpg",
  "classification": "韩漫,年下攻,校园,渣攻,哭包受,黑皮,高H,巨屌,哭包受,滥交攻,追妻火葬场,微虐,巨乳",
  "book_url": "https://boylove.cc/home/book/index/id/13596",
  "descriptions": "《상극》　人会爱上完全不是自己取向的某个人吗？　而且如果一见锺情的人就是自己最讨厌的那累人该怎么办？　哥,要和我睡吗？你不是喜欢我吗？"
}',
    `uuid`= '35433c74-3583-4db5-a1b1-d0f5b68a7899',
    `book_url`='https://boylove.cc/home/book/index/id/13596'
WHERE `id` = 7;

insert into shanetest30 (`UUid`)
VALUES (UUid());

ALTER table book
    add uuid text;


UPDATE `book`
SET `metadata_json` = '{
  "author": "百合アズル",
  "title": "Pop ones cherry",
  "publish_status": "連載中",
  "cover_url": "https://boylove.cc/Public/Uploads/img/20210811/5300cec8f7340ca71fb20ff921fc7289.jpg",
  "classification": "日漫,ABO,傲娇受,道具,强攻强受,壮受,捆绑,SM,青梅竹马,腹黑攻",
  "book_url": "https://boylove.cc/home/book/index/id/13393",
  "descriptions": "[百合アズル] ポップワンズチェリー  [冒险者公会] [Digital]　「虽然很想对你温柔到底…但不行呢」咲真虽然按照廉次的要求出门了、但仍逃不过被玩弄的命运…！？"
}'
WHERE `book_url` = 'https://boylove.cc/home/book/index/id/13393';



select *
from book
where book_url = 'https://boylove.cc/home/book/index/id/14736';


UPDATE `book`
SET `metadata_json` = '{
  "author": "鬼嶋兵伍",
  "title": "极品狮子养成计划",
  "publish_status": "連載中",
  "cover_url": "https://boylove.cc/bookimages/comic18_241529/241529_3x4.jpg",
  "classification": "日漫,兽人,巨乳",
  "book_url": "https://boylove.cc/home/book/index/id/12290",
  "descriptions": "香香腐宅永久网址：https://fuhouse.cc/bl 　　[拾荒者汉化组] [鬼嶋兵伍] 极上狮子育成计画　　在这个世界上，存在着人类和兽人两种人种。　洛基，兽人，被称为 残暴的洛基，在与兽人同类搏杀的观赏赛中每每痛击对手，拿下了16战不败的成绩。　然而有一天，过着落魄生活的洛基，却突然被雷泽家的少爷吉野赎身。　洛基本已经做好献出身体的觉悟，但吉野却提供给他了一个梦想般的生意。　那就是提高兽人的地位，并让洛基成为 \\\\\\\\\\\\\\正统比赛 \\\\\\\\\\\\\\中的 \\\\\\\\\\\\\\兽人英雄\\\\\\\\\\\\\\。　但真正的变态(兽人爱好者)吉野却抵挡不住洛基毛茸茸的身体，随着他们夜夜欢爱，两人的关系逐渐发生变化......。"
}'
WHERE `book_url` = 'https://boylove.cc/home/book/index/id/12290';


select chapter.id,
       b.title             as 'title',
       chapter.name,
       chapter.chapter_url as 'chapter_url',
       chapter.pic_url_array,
       b.author            as author,
       b.book_url          as book_url,
       b.cover_url         as cover_url,
       b.metadata_json     as metadata_json,
       b.publish_status    as publish_status
from chapter
         join book b on b.id = chapter.book_id
where book_id = 1;








