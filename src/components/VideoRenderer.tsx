import React from 'react';

interface VideoRendererProps {
  href: string;
  title?: string;
  text?: string;
}

const VideoRenderer: React.FC<VideoRendererProps> = ({ href = '', title, text = '' }) => {
  const isVideo = href && href.toLowerCase().endsWith('.mp4');

  if (isVideo) {
    return (
      <figure className="video-figure">
        <video controls src={href} title={title} width="100%" className="block max-w-full h-auto rounded-md shadow-sm mb-2">
          Your browser does not support the video tag. Source: {href}
        </video>
        {text && (
          <figcaption className="text-sm text-gray-500 text-center mt-0">{text}</figcaption>
        )}
      </figure>
    );
  } else {
    return (
      <div className="not-prose">
        <img src={href} title={title} alt={text} />
      </div>
    );
  }
};

export default VideoRenderer;