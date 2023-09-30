export default function checkEnvironment(): string {
  const envUrl =
    process.env.NODE_ENV === 'development'
      ? 'http://localhost:3000'
      : 'https://trullo-app.vercel.app';

  return envUrl;
}
