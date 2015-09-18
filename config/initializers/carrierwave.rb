# Allow non-ascii letters in uploaded filenames
#한글 파일명 인코딩 문제 해결법
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\s\.\-\+]/