import { render, screen } from '@testing-library/react';
import App from './App';

test('renders calc', () => {
  render(<App />);
  const linkElement = screen.getByText(/calc/i);
  expect(linkElement).toBeInTheDocument();
});

test('renders calc', () => {
  render(<App />);
  const linkElement = screen.getByText(/calc/i);
  expect(linkElement).toBeInTheDocument();
});
