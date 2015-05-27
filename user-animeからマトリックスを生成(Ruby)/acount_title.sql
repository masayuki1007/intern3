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
	--�^�C�g���A�����A�J�E���g�A�n�b�V���^�O
	    WHEN tweet_text like '%�K���O���t�B�e�B%' OR tweet_text like '%koufuku_g%' OR tweet_text like '%koufukug%'
		THEN '�K���O���t�B�e�B'
		WHEN tweet_text like '%�e�c���s�̃t�@�t�j�[��%' OR tweet_text like '%fafnir_anime%' OR tweet_text like '%fafnir_anime%'
		THEN '�e�c���s�̃t�@�t�j�[��'
		WHEN tweet_text like '%�Ⴆ�Ȃ��ޏ��̈�Ă���%' OR tweet_text like '%saenai_heroine%' OR tweet_text like '%saekano%'
		THEN '�Ⴆ�Ȃ��ޏ��̈�Ă���'
		WHEN tweet_text like '%�ÎE����%' OR tweet_text like '%ansatsu_anime%' OR tweet_text like '%�ÎE����%'
		THEN '�ÎE����'
		WHEN tweet_text like '%�T��̌��~���L�B�z�[���YTD%' OR tweet_text like '%milkyholmes%' OR tweet_text like '%milkyholmes%'
		THEN '�T��̌��~���L�B�z�[���YTD'
		WHEN tweet_text like '%�͑����ꂭ����� -�͂���-%' OR tweet_text like '%anime_KanColle%' OR tweet_text like '%�͂���%'
		THEN '�͑����ꂭ����� -�͂���-'
		WHEN tweet_text like '%�A�C�h���}�X�^�[�V���f�����K�[���Y%' OR tweet_text like '%imas_anime%' OR tweet_text like '%imas_cg%'
		THEN '�A�C�h���}�X�^�[�V���f�����K�[���Y'
		WHEN tweet_text like '%�W���W���̊�Ȗ`�� �X�^�[�_�X�g�N���Z�C�_�[�X%' OR tweet_text like '%anime_jojo%' OR tweet_text like '%jojo_anime%'
		THEN '�W���W���̊�Ȗ`�� �X�^�[�_�X�g�N���Z�C�_�[�X'
		WHEN tweet_text like '%�A���h�m�A�E�[��(�㔼)%' OR tweet_text like '%aldnoahzero%' OR tweet_text like '%aldnoahzero%'
		THEN '�A���h�m�A�E�[��(�㔼)'
		WHEN tweet_text like '%���N�n���E�b�h-HOLLY STAGE FOR 50-%' OR tweet_text like '%shohari_anime%' OR tweet_text like '%shohari%'
		THEN '���N�n���E�b�h-HOLLY STAGE FOR 50-'
		WHEN tweet_text like '%�f��������!!�~�Q%' OR tweet_text like '%drrr_anime%' OR tweet_text like '%drrr_anime%'
		THEN '�f��������!!�~�Q'
		WHEN tweet_text like '%���u�̃t�@�t�i�[ EXODUS%' OR tweet_text like '%fafnerproject%' OR tweet_text like '%fafner%'
		THEN '���u�̃t�@�t�i�[ EXODUS'
		WHEN tweet_text like '%�����̃}���A%' OR tweet_text like '%JunketsuMariaTV%' OR tweet_text like '%maria_anime%'
		THEN '�����̃}���A'
		WHEN tweet_text like '%���j���Z�n���h�q��LOVE!%' OR tweet_text like '%boueibu%' OR tweet_text like '%boueibu%'
		THEN '���j���Z�n���h�q��LOVE!'
		WHEN tweet_text like '%�����g���̋֎�r�������[���h�u���C�N��%' OR tweet_text like '%warubure%' OR tweet_text like '%�����u��_A%'
		THEN '�����g���̋֎�r�������[���h�u���C�N��'
		WHEN tweet_text like '%DOG DAYS��%' OR tweet_text like '%dogdays_anime%' OR tweet_text like '%dogdays%'
		THEN 'DOG DAYS��'
		WHEN tweet_text like '%���t�^����I2%' OR tweet_text like '%ketsuekigatakun%' OR tweet_text like '%���t�^����%'
		THEN '���t�^����I2'
		WHEN tweet_text like '%ISUCA%' OR tweet_text like '%isuca_official%' OR tweet_text like '%ISUCA%'
		THEN 'ISUCA'
		WHEN tweet_text like '%�������g�[�L���[�O�[����A%' OR tweet_text like '%tkg_anime%' OR tweet_text like '%tkg_anime%'
		THEN '�������g�[�L���[�O�[����A'
		WHEN tweet_text like '%���q�̃o�X�P ��3��%' OR tweet_text like '%kurobasanime%' OR tweet_text like '%kurobas%'
		THEN '���q�̃o�X�P ��3��'
		WHEN tweet_text like '%�A�u�\�����[�g�E�f���I%' OR tweet_text like '%abso_official%' OR tweet_text like '%abso_duo%'
		THEN '�A�u�\�����[�g�E�f���I'
		WHEN tweet_text like '%�V�������̌_���(�e�X�^�����g) %' OR tweet_text like '%shinmaimaou%' OR tweet_text like '%shinmaimaou%'
		THEN '�V�������̌_���(�e�X�^�����g) '
		WHEN tweet_text like '%���[�����O���K�[���Y%' OR tweet_text like '%therollinggirls%' OR tweet_text like '%rollinggirls%'
		THEN '���[�����O���K�[���Y'
		WHEN tweet_text like '%��m���b�^�[�}��%' OR tweet_text like '%yoru_yatterman%' OR tweet_text like '%�郄�b�^�[%'
		THEN '��m���b�^�[�}��'
		WHEN tweet_text like '%�݂�ȏW�܂�I�t�@���R���w��SC%' OR tweet_text like '%falgaku_anime%' OR tweet_text like '%falgaku%'
		THEN '�݂�ȏW�܂�I�t�@���R���w��SC'
		WHEN tweet_text like '%�_�l�͂��߂܂�����%' OR tweet_text like '%mikagesha%' OR tweet_text like '%mikagesha%'
		THEN '�_�l�͂��߂܂�����'
		WHEN tweet_text like '%�퍑���o%' OR tweet_text like '%sengoku_musou%' OR tweet_text like '%�A�j���퍑���o%'
		THEN '�퍑���o'
		WHEN tweet_text like '%�f�X�E�p���[�h%' OR tweet_text like '%dp_anime%' OR tweet_text like '%dp_anime%'
		THEN '�f�X�E�p���[�h'
		WHEN tweet_text like '%��������m�Z�[���[���[��Crystal 2��%' OR tweet_text like '%sailormoon_20th%' OR tweet_text like '%�Z�[���[���[��%'
		THEN '��������m�Z�[���[���[��Crystal 2��'
	    ELSE 'not hit'
	END as title
  	
FROM
	anime_table
GROUP BY
	acount_name,title
) as table2