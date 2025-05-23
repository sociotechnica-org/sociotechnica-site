import React from 'react';

interface SocialMetaProps {
  title: string;
  description: string;
  image?: string;
  url: string;
}

const SocialMeta: React.FC<SocialMetaProps> = ({ 
  title, 
  description, 
  image = '/default-social-image.png', 
  url 
}) => {
  const siteName = 'SocioTechnica';
  
  return (
    <>
      <title>{title} | {siteName}</title>
      <meta name="description" content={description} />

      {/* Open Graph / Facebook */}
      <meta property="og:type" content="article" />
      <meta property="og:url" content={url} />
      <meta property="og:title" content={title} />
      <meta property="og:description" content={description} />
      <meta property="og:image" content={image} />
      <meta property="og:site_name" content={siteName} />

      {/* Twitter */}
      <meta name="twitter:card" content="summary_large_image" />
      <meta name="twitter:url" content={url} />
      <meta name="twitter:title" content={title} />
      <meta name="twitter:description" content={description} />
      <meta name="twitter:image" content={image} />
    </>
  );
};

export default SocialMeta;