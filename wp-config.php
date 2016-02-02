<?php
/**
 * Podstawowa konfiguracja WordPressa.
 *
 * Skrypt wp-config.php używa tego pliku podczas instalacji.
 * Nie musisz dokonywać konfiguracji przy pomocy przeglądarki internetowej,
 * możesz też skopiować ten plik, nazwać kopię "wp-config.php"
 * i wpisać wartości ręcznie.
 *
 * Ten plik zawiera konfigurację:
 *
 * * ustawień MySQL-a,
 * * tajnych kluczy,
 * * prefiksu nazw tabel w bazie danych,
 * * ABSPATH.
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Ustawienia MySQL-a - możesz uzyskać je od administratora Twojego serwera ** //
/** Nazwa bazy danych, której używać ma WordPress */
define('DB_NAME', 'endodent');

/** Nazwa użytkownika bazy danych MySQL */
define('DB_USER', 'admin');

/** Hasło użytkownika bazy danych MySQL */
define('DB_PASSWORD', 'admin');

/** Nazwa hosta serwera MySQL */
define('DB_HOST', 'localhost');

/** Kodowanie bazy danych używane do stworzenia tabel w bazie danych. */
define('DB_CHARSET', 'utf8mb4');

/** Typ porównań w bazie danych. Nie zmieniaj tego ustawienia, jeśli masz jakieś wątpliwości. */
define('DB_COLLATE', '');

/**#@+
 * Unikatowe klucze uwierzytelniania i sole.
 *
 * Zmień każdy klucz tak, aby był inną, unikatową frazą!
 * Możesz wygenerować klucze przy pomocy {@link https://api.wordpress.org/secret-key/1.1/salt/ serwisu generującego tajne klucze witryny WordPress.org}
 * Klucze te mogą zostać zmienione w dowolnej chwili, aby uczynić nieważnymi wszelkie istniejące ciasteczka. Uczynienie tego zmusi wszystkich użytkowników do ponownego zalogowania się.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '+8??4fn@8@kkE0VNB.[kJh-N+h+jj?WdgQ}^tz29(n<K2-IUHmXn^(UA3)+*<kh)');
define('SECURE_AUTH_KEY',  '] cZ^-]v5Kp`0VnI(bHGtR-&-~U%eRX+9%#j7+2wM//nW+Jwki@Gf)*-Hfei!5{c');
define('LOGGED_IN_KEY',    'F&f0a%b)N<wqR! d+u=(/vA>fju4|ZT<U$sM!Z+)&||,>_%9~!rcbj*6*qM]|-Vr');
define('NONCE_KEY',        'N6a=;`v1hJVwiKDTco<QgN*L!d$,@fHguj5/f6k;|tjz/|_tI);T.5~n|HDgqlKz');
define('AUTH_SALT',        '4!<q*{Hh4=Q.qoDnqO.H.D+*Es|kV64k-yK$T;TQ|}9@Zs#U}l;|ZLuJ?u`,Sr?4');
define('SECURE_AUTH_SALT', 'I(B5v|C+>CA{?7dqXiCwQh/]&*a=o?9db!]IQ=uXEt2RBJ+ct^&6y09NW>b*-}`1');
define('LOGGED_IN_SALT',   'k-5M|.E+rC9b&*fX+tG%kS+{,{cYt;57~QbtiZh!NpTh,:00MC_lFYt7;]u5{oF>');
define('NONCE_SALT',       'R(->=pNkb-C:uW (+,Dds81&1!2*p_#QlZ@k?6_pNT}By%qNb}>u6rE%|=&202=<');

/**#@-*/

/**
 * Prefiks tabel WordPressa w bazie danych.
 *
 * Możesz posiadać kilka instalacji WordPressa w jednej bazie danych,
 * jeżeli nadasz każdej z nich unikalny prefiks.
 * Tylko cyfry, litery i znaki podkreślenia, proszę!
 */
$table_prefix  = 'wp_';

/**
 * Dla programistów: tryb debugowania WordPressa.
 *
 * Zmień wartość tej stałej na true, aby włączyć wyświetlanie
 * ostrzeżeń podczas modyfikowania kodu WordPressa.
 * Wielce zalecane jest, aby twórcy wtyczek oraz motywów używali
 * WP_DEBUG podczas pracy nad nimi.
 *
 * Aby uzyskać informacje o innych stałych, które mogą zostać użyte
 * do debugowania, przejdź na stronę Kodeksu WordPressa.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* To wszystko, zakończ edycję w tym miejscu! Miłego blogowania! */

/** Absolutna ścieżka do katalogu WordPressa. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Ustawia zmienne WordPressa i dołączane pliki. */
require_once(ABSPATH . 'wp-settings.php');
