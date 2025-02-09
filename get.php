,<?php

$abu =	"\e[0;33m";
$abu1 = "\e[0;37m";
$abu2 = "\e[1;30m";
for ($time123 = 0; $time123 < 5; $time123++) {
$useragent = "Mozilla/5.0 (Linux; Android 6.0.1; NEO-U9-H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Safari/537.36 OPR/63.3.3216.58675";
$data = json_encode(["bot" => "helo word" . $time123]);
$url = 'https://webhook.site/ac88e0ee-7ddf-4ca7-afbf-76d090d0eeab';
$header = [
    "user-agent: ".$useragent,
    "X-Requested-With: XMLHttpRequest",
    "Content-Type: application/json"
];
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
$response = curl_exec($ch);
if ($response === false) {
    echo "cURL Error: " . curl_error($ch);
}
curl_close($ch);

echo$abu1." 💰💰====".$time123."========================================💰💰\n";
sleep(31);
}

echo "Selesai, bot berhenti...\n";
        die();
?>
