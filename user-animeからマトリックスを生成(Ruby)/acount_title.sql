SELECT acount_name,title,
	CASE
	WHEN tweet_count=0
	    THEN 0
	    ELSE 1
	END as binary_count
FROM
(
SELECT
	count(*) as tweet_count,
	acount_name,
	CASE
	--タイトル、公式アカウント、ハッシュタグ
	    WHEN tweet_text like '%幸腹グラフィティ%' OR tweet_text like '%koufuku_g%' OR tweet_text like '%koufukug%'
		THEN '幸腹グラフィティ'
		WHEN tweet_text like '%銃皇無尽のファフニール%' OR tweet_text like '%fafnir_anime%' OR tweet_text like '%fafnir_anime%'
		THEN '銃皇無尽のファフニール'
		WHEN tweet_text like '%冴えない彼女の育てかた%' OR tweet_text like '%saenai_heroine%' OR tweet_text like '%saekano%'
		THEN '冴えない彼女の育てかた'
		WHEN tweet_text like '%暗殺教室%' OR tweet_text like '%ansatsu_anime%' OR tweet_text like '%暗殺教室%'
		THEN '暗殺教室'
		WHEN tweet_text like '%探偵歌劇ミルキィホームズTD%' OR tweet_text like '%milkyholmes%' OR tweet_text like '%milkyholmes%'
		THEN '探偵歌劇ミルキィホームズTD'
		WHEN tweet_text like '%艦隊これくしょん -艦これ-%' OR tweet_text like '%anime_KanColle%' OR tweet_text like '%艦これ%'
		THEN '艦隊これくしょん -艦これ-'
		WHEN tweet_text like '%アイドルマスターシンデレラガールズ%' OR tweet_text like '%imas_anime%' OR tweet_text like '%imas_cg%'
		THEN 'アイドルマスターシンデレラガールズ'
		WHEN tweet_text like '%ジョジョの奇妙な冒険 スターダストクルセイダース%' OR tweet_text like '%anime_jojo%' OR tweet_text like '%jojo_anime%'
		THEN 'ジョジョの奇妙な冒険 スターダストクルセイダース'
		WHEN tweet_text like '%アルドノア・ゼロ(後半)%' OR tweet_text like '%aldnoahzero%' OR tweet_text like '%aldnoahzero%'
		THEN 'アルドノア・ゼロ(後半)'
		WHEN tweet_text like '%少年ハリウッド-HOLLY STAGE FOR 50-%' OR tweet_text like '%shohari_anime%' OR tweet_text like '%shohari%'
		THEN '少年ハリウッド-HOLLY STAGE FOR 50-'
		WHEN tweet_text like '%デュラララ!!×２%' OR tweet_text like '%drrr_anime%' OR tweet_text like '%drrr_anime%'
		THEN 'デュラララ!!×２'
		WHEN tweet_text like '%蒼穹のファフナー EXODUS%' OR tweet_text like '%fafnerproject%' OR tweet_text like '%fafner%'
		THEN '蒼穹のファフナー EXODUS'
		WHEN tweet_text like '%純潔のマリア%' OR tweet_text like '%JunketsuMariaTV%' OR tweet_text like '%maria_anime%'
		THEN '純潔のマリア'
		WHEN tweet_text like '%美男高校地球防衛部LOVE!%' OR tweet_text like '%boueibu%' OR tweet_text like '%boueibu%'
		THEN '美男高校地球防衛部LOVE!'
		WHEN tweet_text like '%聖剣使いの禁呪詠唱＜ワールドブレイク＞%' OR tweet_text like '%warubure%' OR tweet_text like '%ワルブレ_A%'
		THEN '聖剣使いの禁呪詠唱＜ワールドブレイク＞'
		WHEN tweet_text like '%DOG DAYS″%' OR tweet_text like '%dogdays_anime%' OR tweet_text like '%dogdays%'
		THEN 'DOG DAYS″'
		WHEN tweet_text like '%血液型くん！2%' OR tweet_text like '%ketsuekigatakun%' OR tweet_text like '%血液型くん%'
		THEN '血液型くん！2'
		WHEN tweet_text like '%ISUCA%' OR tweet_text like '%isuca_official%' OR tweet_text like '%ISUCA%'
		THEN 'ISUCA'
		WHEN tweet_text like '%東京喰種トーキョーグール√A%' OR tweet_text like '%tkg_anime%' OR tweet_text like '%tkg_anime%'
		THEN '東京喰種トーキョーグール√A'
		WHEN tweet_text like '%黒子のバスケ 第3期%' OR tweet_text like '%kurobasanime%' OR tweet_text like '%kurobas%'
		THEN '黒子のバスケ 第3期'
		WHEN tweet_text like '%アブソリュート・デュオ%' OR tweet_text like '%abso_official%' OR tweet_text like '%abso_duo%'
		THEN 'アブソリュート・デュオ'
		WHEN tweet_text like '%新妹魔王の契約者(テスタメント) %' OR tweet_text like '%shinmaimaou%' OR tweet_text like '%shinmaimaou%'
		THEN '新妹魔王の契約者(テスタメント) '
		WHEN tweet_text like '%ローリング☆ガールズ%' OR tweet_text like '%therollinggirls%' OR tweet_text like '%rollinggirls%'
		THEN 'ローリング☆ガールズ'
		WHEN tweet_text like '%夜ノヤッターマン%' OR tweet_text like '%yoru_yatterman%' OR tweet_text like '%夜ヤッター%'
		THEN '夜ノヤッターマン'
		WHEN tweet_text like '%みんな集まれ！ファルコム学園SC%' OR tweet_text like '%falgaku_anime%' OR tweet_text like '%falgaku%'
		THEN 'みんな集まれ！ファルコム学園SC'
		WHEN tweet_text like '%神様はじめました◎%' OR tweet_text like '%mikagesha%' OR tweet_text like '%mikagesha%'
		THEN '神様はじめました◎'
		WHEN tweet_text like '%戦国無双%' OR tweet_text like '%sengoku_musou%' OR tweet_text like '%アニメ戦国無双%'
		THEN '戦国無双'
		WHEN tweet_text like '%デス・パレード%' OR tweet_text like '%dp_anime%' OR tweet_text like '%dp_anime%'
		THEN 'デス・パレード'
		WHEN tweet_text like '%美少女戦士セーラームーンCrystal 2期%' OR tweet_text like '%sailormoon_20th%' OR tweet_text like '%セーラームーン%'
		THEN '美少女戦士セーラームーンCrystal 2期'
	    ELSE 'not hit'
	END as title
  	
FROM
	anime_table
GROUP BY
	acount_name,title
) as table2