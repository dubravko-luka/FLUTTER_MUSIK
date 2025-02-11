import 'package:musik/src/models/music_model.dart';

final List<Music> musicData = [
  Music(
      title: 'Làm Bồ Anh Nhé',
      artist: 'Phạm Đình Thái Ngân, Lăng LD',
      timeAgo: 'a year ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w240_r1x1_jpeg/cover/2/e/c/5/2ec51983dbff681cc3cb7af20b4c7ad2.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/20/95/1823758110259520-1823758110316947-1823758115796819.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T105444Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=fd239f109a8a6f6ef9db9620eb0680ea40aaf43e1d76f9acb4ff8d6fb8557c2a'),
  Music(
      title: 'Người Lạ Trong Mơ',
      artist: 'Khắc Hưng',
      timeAgo: '2 years ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w94_r1x1_jpeg/cover/e/4/2/a/e42af6ff948410eaa692a1779ec344af.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/50/73/1823754109457350-1823754109509109-1823754154780146.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T095153Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=822a95221bdcb5903b922ba0b7620a5cf74e905638428bd203813257f8dc0650'),
  Music(
      title: 'Hạ đầu tam bái',
      artist: 'Phạm Đình Thái Ngân, Lăng LD',
      timeAgo: 'a year ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w240_r1x1_jpeg/cover/8/6/1/e/861e4e5b607217cc6818c3868a886042.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/20/95/1823758110259520-1823758110316947-1823758115796819.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T105444Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=fd239f109a8a6f6ef9db9620eb0680ea40aaf43e1d76f9acb4ff8d6fb8557c2a'),
  Music(
      title: 'Em là lý do',
      artist: 'Khắc Hưng',
      timeAgo: '2 years ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w240_r1x1_jpeg/cover/9/9/5/b/995b3909329ee3128844e273b2722117.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/50/73/1823754109457350-1823754109509109-1823754154780146.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T095153Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=822a95221bdcb5903b922ba0b7620a5cf74e905638428bd203813257f8dc0650'),
  Music(
      title: 'Làm Bồ Anh Nhé',
      artist: 'Phạm Đình Thái Ngân, Lăng LD',
      timeAgo: 'a year ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w240_r1x1_jpeg/cover/2/e/c/5/2ec51983dbff681cc3cb7af20b4c7ad2.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/20/95/1823758110259520-1823758110316947-1823758115796819.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T105444Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=fd239f109a8a6f6ef9db9620eb0680ea40aaf43e1d76f9acb4ff8d6fb8557c2a'),
  Music(
      title: 'Người Lạ Trong Mơ',
      artist: 'Khắc Hưng',
      timeAgo: '2 years ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w94_r1x1_jpeg/cover/e/4/2/a/e42af6ff948410eaa692a1779ec344af.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/50/73/1823754109457350-1823754109509109-1823754154780146.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T095153Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=822a95221bdcb5903b922ba0b7620a5cf74e905638428bd203813257f8dc0650'),
  Music(
      title: 'Hạ đầu tam bái',
      artist: 'Phạm Đình Thái Ngân, Lăng LD',
      timeAgo: 'a year ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w240_r1x1_jpeg/cover/8/6/1/e/861e4e5b607217cc6818c3868a886042.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/20/95/1823758110259520-1823758110316947-1823758115796819.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T105444Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=fd239f109a8a6f6ef9db9620eb0680ea40aaf43e1d76f9acb4ff8d6fb8557c2a'),
  Music(
      title: 'Em là lý do',
      artist: 'Khắc Hưng',
      timeAgo: '2 years ago',
      imageUrl: 'https://tunescape.vercel.app/poster/w240_r1x1_jpeg/cover/9/9/5/b/995b3909329ee3128844e273b2722117.jpg',
      url:
          'https://s3.eu-central-1.wasabisys.com/audio.com.audio/transcoding/50/73/1823754109457350-1823754109509109-1823754154780146.mp3?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=W7IA3NSYSOQIKLY9DEVC%2F20250211%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20250211T095153Z&X-Amz-SignedHeaders=host&X-Amz-Expires=518400&X-Amz-Signature=822a95221bdcb5903b922ba0b7620a5cf74e905638428bd203813257f8dc0650'),
];
